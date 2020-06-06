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
import model.Customer;
import model.dao.DBManager;
/**
 *
 * @author Hazel
 */
public class DeleteServlet_Customer extends HttpServlet {
    
     @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {       
             //1- retrieve the current session
             HttpSession session = request.getSession();
             //2- create an instance of the Validator class  
             Validator validator = new Validator();
             //3- capture the posted email

             String customerEmail= request.getParameter("email");
             String customerPassword = request.getParameter("password");
        

             //4- capture the posted password    
             //String shipdate = request.getParameter("shipdate");
             //5- retrieve the manager instance from session
             DBManager manager = (DBManager) session.getAttribute ("manager");
             
                     try {          
                            //6- find user by email and password
                            Customer customer = manager.findCustomer(customerEmail,customerPassword);
                            if(customer != null){
                                manager.deleteCustomer(customerEmail);
                                request.getRequestDispatcher("delete_succeed.jsp").include(request,response);
                            }else{
                                session.setAttribute("existErr", "Customer Does Not Exists");
                                request.getRequestDispatcher("delete_customer.jsp").include(request,response);
                            }
                     } catch (SQLException ex) {           
                           Logger.getLogger(DeleteServlet_Customer.class.getName()).log(Level.SEVERE, null, ex);       
                     }
     }
}
