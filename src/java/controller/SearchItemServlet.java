/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
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
public class SearchItemServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException
    {
        HttpSession session = request.getSession();
        String search = request.getParameter("search");
        DBManager manager = (DBManager) session.getAttribute("manager");
        ArrayList<Item> itemlist = new ArrayList<>();
        Item item = null;
        try
        {
            itemlist= manager.SearchItem(search);
            for(int i=0; i<itemlist.size(); i++)
            {
            
                if(itemlist.get(i) != null)
                {   
                    session.setAttribute("item", itemlist.get(i));
                    request.getRequestDispatcher("customeritemsearch.jsp").include(request, response);
                }
                else
                {
                    session.setAttribute("existErr", "Item does not exist in the Database!");
                    request.getRequestDispatcher("customer_item_page.jsp").include(request, response);
                }
            }
        }
        catch(SQLException ex)
        {
            Logger.getLogger(SearchItemServlet.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.getErrorCode()+"and"+ex.getMessage());
        }
        
    }
}

