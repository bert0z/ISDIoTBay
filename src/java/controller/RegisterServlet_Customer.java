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
 * @author bert_
 */
public class RegisterServlet_Customer extends HttpServlet {
    
     @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {       
             //1- retrieve the current session
             HttpSession session = request.getSession();
             //2- create an instance of the Validator class  
             Validator validator = new Validator();
             //3- capture the posted email

             String customerName = request.getParameter("name");
             String customerEmail= request.getParameter("email");
             String customerPassword = request.getParameter("password");
             String customerAddress = request.getParameter("address");
             String customerPostcode= request.getParameter("postcode");
             String customerContactNum = request.getParameter("contactnum");

             //4- capture the posted password    
             //String shipdate = request.getParameter("shipdate");
             //5- retrieve the manager instance from session
             DBManager manager = (DBManager) session.getAttribute ("manager");
             
                     try {          
                            //6- find user by email and password
                            Customer exist = manager.findCustomer(customerEmail,customerPassword);
                            if(exist != null){
                                session.setAttribute("existErr", "Customer Already Exists");
                                request.getRequestDispatcher("register_customer.jsp").include(request,response);
                            }else{
                                manager.addCustomer(customerEmail, customerName, customerPassword, customerAddress, customerPostcode, customerContactNum);
                                Customer customer = new Customer(customerEmail, customerName, customerPassword, customerAddress, customerPostcode, customerContactNum);
                                session.setAttribute("customer",customer);
                                request.getRequestDispatcher("main.jsp").include(request,response);
                            }
                     } catch (SQLException ex) {           
                           Logger.getLogger(LoginServlet_Customer.class.getName()).log(Level.SEVERE, null, ex);       
                     }
     }
}
