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
 * @author Hazel
 */
public class DeleteServlet_Staff extends HttpServlet {
    
     @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {       
             //1- retrieve the current session
             HttpSession session = request.getSession();
             //2- create an instance of the Validator class  
             Validator validator = new Validator();
             //3- capture the posted email

             String staffEmail= request.getParameter("email");
             String staffPassword = request.getParameter("password");
        

             //4- capture the posted password    
             //String shipdate = request.getParameter("shipdate");
             //5- retrieve the manager instance from session
             DBManager manager = (DBManager) session.getAttribute ("manager");
             
                     try {          
                            //6- find user by email and password
                            Staff staff = manager.findStaff(staffEmail,staffPassword);
                            if(staff != null){
                                manager.deleteStaff(staffEmail);
                                request.getRequestDispatcher("delete_succeed_1.jsp").include(request,response);
                            }else{
                                session.setAttribute("existErr", "Staff Does Not Exists");
                                request.getRequestDispatcher("delete_staff.jsp").include(request,response);
                            }
                     } catch (SQLException ex) {           
                           Logger.getLogger(DeleteServlet_Staff.class.getName()).log(Level.SEVERE, null, ex);       
                     }
     }
}
