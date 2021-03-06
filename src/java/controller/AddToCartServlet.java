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
import model.OrderLine;
import model.dao.DBManager;
/**
 *
 * @author 
 */


public class AddToCartServlet extends HttpServlet {
    
     @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {  
            response.setContentType("text/html;charset=UTF-8");
             //1- retrieve the current session

           HttpSession session = request.getSession(); 
             //2- create an instance of the Validator class  
         /*    Validator validator = new Validator(); */
         
         
             //3- capture the posted data
 
             int itemid = Integer.parseInt(request.getParameter("itemid"));
             String itemname = request.getParameter("itemname");
             double itemprice= Double.parseDouble(request.getParameter("itemprice"));
             boolean incart = Boolean.parseBoolean(request.getParameter("incart"));
             //Create item to add to cart
             

             //5- retrieve the manager instance from session
             DBManager manager = (DBManager) session.getAttribute ("manager");
             
                     try { 
                          //6- find user by email and password
                            OrderLine exist = manager.findCart(itemid,itemname);
                            if(exist != null){
                                session.setAttribute("existErr", "Item is Already in Cart");
                                request.getRequestDispatcher("product_list.jsp").include(request,response);
                            }
                            else
                            {
                                manager.addToCart(itemid,itemname,itemprice,incart);
                                 OrderLine orderline = new OrderLine(itemid,itemname,itemprice,incart);
                                session.setAttribute("orderline",orderline);
                                request.getRequestDispatcher("cart.jsp").include(request,response);
                            }
                     } catch (SQLException ex) {           
                           Logger.getLogger(AddToCartServlet.class.getName()).log(Level.SEVERE, null, ex);       
                     }
     }
}

