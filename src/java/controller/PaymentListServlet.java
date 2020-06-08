/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Payment;
import model.dao.DBConnector;
import model.dao.PaymentDAO;

/**
 *
 * @author caojingwen
 */
public class PaymentListServlet extends HttpServlet {
    private DBConnector connector;
    private PaymentDAO paymentDAO;
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public PaymentListServlet() throws ClassNotFoundException, SQLException {
        connector = new DBConnector();
        paymentDAO = new PaymentDAO(connector.openConnection());
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pid = request.getParameter("pid");
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        List<Payment> paymentList = null;
        try {
            paymentList = paymentDAO.searchPayments(pid, from, to);
        } catch (SQLException ex) {
            Logger.getLogger(PaymentListServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        request.setAttribute("paymentList", paymentList);
        request.getRequestDispatcher("myPayment.jsp").include(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
