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
import model.Order;
import model.dao.DBManager;
/**
 *
 * @author bert_
 */
public class FindOrdersServlet extends HttpServlet {

    @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {       
             //1- retrieve the current session
             HttpSession session = request.getSession();
             //2- create an instance of the Validator class  
             Validator validator = new Validator();
             //3- capture the posted email
             String orderid = request.getParameter("orderid");
             String orderdate = request.getParameter("orderdate");
             //4- capture the posted password    
             //String shipdate = request.getParameter("shipdate");
             //5- retrieve the manager instance from session
             DBManager manager = (DBManager) session.getAttribute ("manager");
             Order order = null;  
             
                     try {          
                            //6- find user by email and password
                            order = manager.findOrder(orderid,orderdate);
                     } catch (SQLException ex) {           
                           Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);       
                     }
            if (order != null) {                     
                      //13-save the logged in user object to the session 
                      session.setAttribute("order", order);
                      //14- redirect user to the main.jsp
                      request.getRequestDispatcher("pastOrders.jsp").include(request, response);
               } else {                       
                      //15-set user does not exist error to the session 
                      session.setAttribute("existErr", "Order does not exist in Database!");
                      //16- redirect user back to the login.jsp  
                      request.getRequestDispatcher("pastOrderSearch.jsp").include(request, response);
               }   
     }
}




