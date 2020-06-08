/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
public class UpdatePayment extends HttpServlet {

    private DBConnector connector;
    private PaymentDAO paymentDAO;
    public UpdatePayment() throws ClassNotFoundException, SQLException {
        connector = new DBConnector();
        paymentDAO = new PaymentDAO(connector.openConnection());
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pid= request.getParameter("pid");
        try {
            Payment p  = paymentDAO.searchPayments(pid, null, null).get(0);
            request.setAttribute("payment", p);
            request.getRequestDispatcher("updatePayment.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(DeletePayment.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        String pid = request.getParameter("pid");
        String method = request.getParameter("method");
        String orderId = request.getParameter("orderId");
        String amount = request.getParameter("amount");
        String cardName = request.getParameter("cardName");
        String cardNumber = request.getParameter("cardNumber");
        String expiryDate = request.getParameter("expiryDate");
        String cvv = request.getParameter("cvv");
        
        try {
            paymentDAO.updatePayment(pid, method, orderId, amount, cardName, cardNumber, expiryDate, cvv);
            response.sendRedirect("MyPayment");
        } catch (SQLException ex) {
            Logger.getLogger(AddPaymentServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
