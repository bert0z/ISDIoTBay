/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Item;
import model.dao.DBConnector;
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
        HttpSession session = request.getSession();
        DBManager manager = (DBManager) session.getAttribute("manager");
        
        int itemid = Integer.parseInt(request.getParameter("itemid"));
        
        try {
                Item exist =  manager.findItemid(itemid);
                if(exist != null)
                {
                    manager.deleteItem(itemid);
                    request.getRequestDispatcher("itemdeleteconfirm.jsp").include(request,response);
                
                }
                else
                {
                    session.setAttribute("existErr", "Staff Does Not Exists");
                    request.getRequestDispatcher("item_list.jsp").include(request,response);
                }
            } 
        
            catch (SQLException ex)
            {
                Logger.getLogger(DeleteItemServlet.class.getName()).log(Level.SEVERE,null,ex);
            }
        
        
    }

}
