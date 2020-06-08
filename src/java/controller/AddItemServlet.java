/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.*;
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
public class AddItemServlet extends HttpServlet {

    @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
     {       
             //1- retrieve the current session
             HttpSession session = request.getSession();
             //2- create an instance of the Validator class  
             Validator validator = new Validator();
            
             int itemid= Integer.parseInt(request.getParameter("itemid"));
             String itemname = request.getParameter("itemname");
             String category = request.getParameter("category");
             boolean instock = Boolean.parseBoolean(request.getParameter("instock"));
             double price = Double.parseDouble(request.getParameter("price"));
             int instockquantity = Integer.parseInt(request.getParameter("instockquantity"));
             int manufactureid = Integer.parseInt(request.getParameter("manufactureid"));
             boolean incart = false;
                     
             DBManager manager = (DBManager) session.getAttribute ("manager");
             
                     try {          
                            Item exist =  manager.findItemid(itemid);
                            if(exist != null)
                            {
                                session.setAttribute("existErr", "Item is already in DB");
                                request.getRequestDispatcher("item_list.jsp").include(request,response);
                            }
                            else
                            {
                                manager.addItem(itemid,itemname,category,instock,price,instockquantity,manufactureid,incart);
                                Item item = new Item(itemid,itemname,category,instock,price,instockquantity,manufactureid,incart);
                                session.setAttribute("item",item);
                                request.getRequestDispatcher("confirmiteminfo.jsp").include(request,response);
                            }
                     } 
                     catch (SQLException ex) 
                     {           
                           Logger.getLogger(AddItemServlet.class.getName()).log(Level.SEVERE, null, ex);       
                     }
     }
}
