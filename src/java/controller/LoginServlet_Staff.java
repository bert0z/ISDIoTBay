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
import model.Staff;
import model.dao.DBManager;

public class LoginServlet_Staff extends HttpServlet { 

     @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {       
             //1- retrieve the current session
             HttpSession session = request.getSession();
             //2- create an instance of the Validator class  
             Validator validator = new Validator();
             //3- capture the posted email
             String email = request.getParameter("email");
             //4- capture the posted password    
             String password = request.getParameter("password");
             //5- retrieve the manager instance from session
             DBManager manager = (DBManager) session.getAttribute ("manager");
             Staff staff = null;  
             
                     try {          
                            //6- find user by email and password
                            staff = manager.findStaff(email, password);
                     } catch (SQLException ex) {           
                           Logger.getLogger(LoginServlet_Staff.class.getName()).log(Level.SEVERE, null, ex);       
                     }
             if (!validator.validateEmail(email)) {           
                      //8-set incorrect email error to the session 
                      session.setAttribute("emailErr", "Error: Email format incorrect");
                      //9- redirect user back to the login.jsp
                      request.getRequestDispatcher("login_staff.jsp").include(request, response);
              } else if (!validator.validatePassword(password)) {                  
                      //11-set incorrect password error to the session 
                      session.setAttribute("passErr", "Error: Password format incorrect");
                      //12- redirect user back to the login.jsp     
                      request.getRequestDispatcher("login_staff.jsp").include(request, response);
               } else if (staff != null) {                     
                      //13-save the logged in user object to the session 
                      session.setAttribute("staff", staff);
                      //14- redirect user to the main.jsp
                      request.getRequestDispatcher("welcome_1.jsp").include(request, response);
               } else {                       
                      //15-set user does not exist error to the session 
                      session.setAttribute("existErr", "Staff does not exist in Database!");
                      //16- redirect user back to the login.jsp  
                      request.getRequestDispatcher("login_staff.jsp").include(request, response);
               }   
     }
}
