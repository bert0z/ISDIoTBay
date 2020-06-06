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
/**
 *
 * @author bert_
 */
public class RegisterServlet_Staff extends HttpServlet {
    
     @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {       
             //1- retrieve the current session
             HttpSession session = request.getSession();
             //2- create an instance of the Validator class  
             Validator validator = new Validator();
             //3- capture the posted email

             String staffName = request.getParameter("name");
             String staffEmail= request.getParameter("email");
             String staffPassword = request.getParameter("password");
             String staffContactNum = request.getParameter("contactnum");
             String staffPosition= request.getParameter("position");
             String staffSalary = request.getParameter("salary");

             //4- capture the posted password    
             //String shipdate = request.getParameter("shipdate");
             //5- retrieve the manager instance from session
             DBManager manager = (DBManager) session.getAttribute ("manager");
             
                     try {          
                            //6- find user by email and password
                            Staff exist = manager.findStaff(staffEmail,staffPassword);
                            if(exist != null){
                                session.setAttribute("existErr", "Staff Already Exists");
                                request.getRequestDispatcher("register_staff.jsp").include(request,response);
                            }else{
                                manager.addStaff(staffEmail,staffName, staffPassword, staffContactNum, staffPosition, staffSalary);
                                Staff staff = new Staff(staffName, staffEmail, staffPassword, staffContactNum, staffPosition, staffSalary);
                                session.setAttribute("staff",staff);
                                request.getRequestDispatcher("main_1.jsp").include(request,response);
                            }
                     } catch (SQLException ex) {           
                           Logger.getLogger(LoginServlet_Staff.class.getName()).log(Level.SEVERE, null, ex);       
                     }
     }
}
