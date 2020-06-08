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
public class DeleteShipmentServlet extends HttpServlet {
    
    @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {       
             //1- retrieve the current session
             HttpSession session = request.getSession();
             //2- create an instance of the Validator class  
             Validator validator = new Validator();
             //3- capture the posted email
             int shipid = Integer.parseInt(request.getParameter("shipid"));
             String shipdate = request.getParameter("shipdate");
             //4- capture the posted password    
             //String shipdate = request.getParameter("shipdate");
             //5- retrieve the manager instance from session
             DBManager manager = (DBManager) session.getAttribute ("manager");
             
                     try {          
                            //6- find user by email and password
                            Shipment exist = manager.findShipment(shipid,shipdate);
                            if(exist == null){
                                session.setAttribute("existErr", "Shipment Already Exists in DB");
                                request.getRequestDispatcher("completeorder.jsp").include(request,response);
                            }else{
                                manager.deleteShipment(shipid);
                                Shipment shipment = null;
                                session.setAttribute("shipment",shipment);
                                request.getRequestDispatcher("shipmentdeleted.jsp").include(request,response);
                            }
                     } catch (SQLException ex) {           
                           Logger.getLogger(DeleteShipmentServlet.class.getName()).log(Level.SEVERE, null, ex);       
                     }
     }
}
