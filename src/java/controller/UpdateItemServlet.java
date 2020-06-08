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
import model.dao.DBManager;

/**
 *
 * @author yujiwon
 */
public class UpdateItemServlet extends HttpServlet 
{
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        HttpSession session = request.getSession();
        
        int itemid= Integer.parseInt(request.getParameter("itemid"));
        String itemname = request.getParameter("itemname");
        String category = request.getParameter("category");
        boolean instock = Boolean.parseBoolean("instock");
        double price = Double.parseDouble(request.getParameter("price"));
        int instockquantity = Integer.parseInt(request.getParameter("instockquantity"));
        int manufactureid = Integer.parseInt(request.getParameter("manufactureid"));
        
        
        DBManager manager = (DBManager) session.getAttribute("manager");
        
        try
        {
            Item i = manager.findItemid(itemid);
            if(i != null)
            {
                manager.updateItem(itemid, itemname, category, instock, price, instockquantity, manufactureid);
                Item item = new Item(itemid, itemname, category, instock, price, instockquantity, manufactureid);
                session.setAttribute("item",item);
                session.setAttribute("updated","Update was successful");
                request.getRequestDispatcher("item_update.jsp").include(request,response);
            }
            else
            {
                session.setAttribute("updated","Update was not successful!");
                request.getRequestDispatcher("item_update.jsp").include(request, response);
            }
        }
        catch(SQLException ex)
        {
            Logger.getLogger(UpdateItemServlet.class.getName()).log(Level.SEVERE,null,ex);
        }
        
        response.sendRedirect("item_update.jsp");
        
        
    }
    
   
}
