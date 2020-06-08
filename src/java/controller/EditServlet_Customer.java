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
public class EditServlet_Customer extends HttpServlet {
    
     @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {       
             //1- retrieve the current session
             HttpSession session = request.getSession();

             String customerName = request.getParameter("name");
             String customerEmail= request.getParameter("email");
             String customerPassword = request.getParameter("password");
             String customerCurrEmail= request.getParameter("curremail");
             String customerAddress= request.getParameter("address");
             String customerPostcode = request.getParameter("postcode");
             String customerContactNum= request.getParameter("contactnum");
             
             Customer customer = new Customer (customerEmail,customerName,customerPassword,customerAddress,customerPostcode,customerContactNum);
             DBManager manager = (DBManager) session.getAttribute ("manager");
                     try {          
                            if(customer != null){
                                session.setAttribute("customer",customer);
                                manager.updateCustomer(customerCurrEmail, customerEmail, customerName, customerPassword, customerAddress,customerPostcode,customerContactNum);
                                session.setAttribute("updated","Upadte was Successful");
                                request.getRequestDispatcher("edit.jsp").include(request,response);
                            }else{
                                session.setAttribute("updated","Upadte was NOT Successful");
                                request.getRequestDispatcher("edit.jsp").include(request,response);
                            }
                     } catch (SQLException ex) {           
                           Logger.getLogger(EditServlet_Customer.class.getName()).log(Level.SEVERE, null, ex);       
                     }
                     response.sendRedirect("edit.jsp");
     }
}
