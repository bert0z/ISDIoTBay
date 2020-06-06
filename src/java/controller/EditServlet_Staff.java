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
public class EditServlet_Staff extends HttpServlet {
    
     @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {       
             //1- retrieve the current session
             HttpSession session = request.getSession();

             String staffName = request.getParameter("name");
             String staffEmail= request.getParameter("email");
             String staffPassword = request.getParameter("password");
             String staffCurrEmail= request.getParameter("curremail");
             String staffContactNum= request.getParameter("contactnum");
             String staffPosition = request.getParameter("position");
             String staffSalary= request.getParameter("salary");
             
             Staff staff = new Staff (staffName,staffEmail,staffPassword,staffContactNum,staffPosition,staffSalary);
             DBManager manager = (DBManager) session.getAttribute ("manager");
                     try {          
                            //6- find user by email and password
                            if(staff != null){
                                session.setAttribute("staff",staff);
                                manager.updateStaff(staffCurrEmail,staffEmail,staffName,staffPassword,staffContactNum,staffPosition,staffSalary);
                                session.setAttribute("updated","Upadte was Successful");
                                request.getRequestDispatcher("edit_1.jsp").include(request,response);
                            }else{
                                session.setAttribute("updated","Upadte was NOT Successful");
                                request.getRequestDispatcher("edit_1.jsp").include(request,response);
                            }
                     } catch (SQLException ex) {           
                           Logger.getLogger(EditServlet_Staff.class.getName()).log(Level.SEVERE, null, ex);       
                     }
                     response.sendRedirect("edit_1.jsp");
     }
}
