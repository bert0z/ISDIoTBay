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
 * @author soyoung
 */
public class LogoutServlet_Customer extends HttpServlet{
   
    @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {       
     
            HttpSession session = request.getSession();
            DBManager manager = (DBManager)session.getAttribute("manager"); 
            Customer customer = (Customer)session.getAttribute("customer");
            String email = customer.getEmail();
            String time = request.getParameter("time");
        try {
            manager.addAccessLog("Logout", time, email,"customer");
        } catch (SQLException ex) {
            Logger.getLogger(LogoutServlet_Customer.class.getName()).log(Level.SEVERE, null, ex);
        }
              
         session.invalidate();
         request.getRequestDispatcher("logout.jsp").include(request, response);
    
     }
}
