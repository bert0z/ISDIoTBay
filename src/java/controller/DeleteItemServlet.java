/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Item;
import model.dao.DBManager;

/**
 *
 * @author yujiwon
 */
public class DeleteItemServlet extends HttpServlet {

    @Override
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   
             throws ServletException, IOException 
     {
         //get the current session
         HttpSession session = request.getSession();
         
         int itemid = Integer.parseInt(request.getParameter("itemid"));
         String itemname = request.getParameter("itemname");
         
         DBManager manager = (DBManager) session.getAttribute ("manager");
         
         try {          
                           
                Item exist = manager.findItemid(itemid);
               if(exist == null)
               {
                    session.setAttribute("existErr", "Item doesn't exsit in the database");
                    request.getRequestDispatcher("item_list.jsp").include(request,response);
                }
               else{
                    manager.deleteItem(itemid);
                    Item item = null;
                    session.setAttribute("item",item);
                    request.getRequestDispatcher("item_delete.jsp").include(request,response);
                    }
            } catch (SQLException ex) 
            {           
                Logger.getLogger(DeleteItemServlet.class.getName()).log(Level.SEVERE, null, ex);       
            }
     }
}
