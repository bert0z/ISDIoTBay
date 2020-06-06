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
import model.Shipment;
import model.dao.DBManager;
/**
 *
 * @author bert_
 */
public class FindShipmentServelt extends HttpServlet {

    @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {       
             //1- retrieve the current session
             HttpSession session = request.getSession();
             //2- create an instance of the Validator class  
             Validator validator = new Validator();
             //3- capture the posted email
             String shipid = request.getParameter("shipid");
             String shipdate = request.getParameter("shipdate");
             //4- capture the posted password    
             //String shipdate = request.getParameter("shipdate");
             //5- retrieve the manager instance from session
             DBManager manager = (DBManager) session.getAttribute ("manager");
             Shipment shipment = null;  
             
                     try {          
                            //6- find user by email and password
                            shipment = manager.findShipment(shipid,shipdate);
                     } catch (SQLException ex) {           
                           Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);       
                     }
            if (shipment != null) {                     
                      //13-save the logged in user object to the session 
                      session.setAttribute("shipment", shipment);
                      //14- redirect user to the main.jsp
                      request.getRequestDispatcher("pastshipmentresults.jsp").include(request, response);
               } else {                       
                      //15-set user does not exist error to the session 
                      session.setAttribute("existErr", "Shipment does not exist in Database!");
                      //16- redirect user back to the login.jsp  
                      request.getRequestDispatcher("pastshipments.jsp").include(request, response);
               }   
     }
}
