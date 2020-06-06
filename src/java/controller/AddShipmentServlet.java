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
public class AddShipmentServlet extends HttpServlet {
    
     @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {       
             //1- retrieve the current session
             HttpSession session = request.getSession();
             //2- create an instance of the Validator class  
             Validator validator = new Validator();
             //3- capture the posted email
             String shipid = request.getParameter("shipid");
             String shipname = request.getParameter("shipname");
             String shipnum= request.getParameter("shipnum");
             String shipadd = request.getParameter("shipadd");
             String shippost = request.getParameter("shippost");
             String shipcour = request.getParameter("shipcour");
             String shipstat = request.getParameter("shipstat");
             String shipdate = request.getParameter("shipdate");
             String orderid = request.getParameter("orderid");
             //4- capture the posted password    
             //String shipdate = request.getParameter("shipdate");
             //5- retrieve the manager instance from session
             DBManager manager = (DBManager) session.getAttribute ("manager");
             
                     try {          
                            //6- find user by email and password
                            Shipment exist = manager.findShipment(shipid,shipdate);
                            if(exist != null){
                                session.setAttribute("existErr", "Shipment Already Exists in DB");
                                request.getRequestDispatcher("shipment.jsp").include(request,response);
                            }else{
                                manager.addShipment(shipid,shipname,shipnum,shipadd,shippost,shipcour,shipstat,shipdate,orderid);
                                Shipment shipment = new Shipment(shipid,shipname,shipnum,shipadd,shippost,shipcour,shipstat,shipdate,orderid);
                                session.setAttribute("shipment",shipment);
                                request.getRequestDispatcher("completeorder.jsp").include(request,response);
                            }
                     } catch (SQLException ex) {           
                           Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);       
                     }
     }
}
