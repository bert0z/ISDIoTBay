/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Payment;

/**
 *
 * @author caojingwen
 */
public class PaymentDAO {

    private Statement st;

    public PaymentDAO(Connection conn) throws SQLException {
        st = conn.createStatement();
    }

    public List<Payment> searchPayments(String id, String from, String to) throws SQLException {
        String sql = "select * from payment where ID>0";
        if (!isEmpty(id)) {
            sql = sql + " and ID=" + id;
        }
        if (!isEmpty(from)) {
            sql = sql + " and PAYMENTDATE>=TIMESTAMP('" + from + " 00:00:00')";
        }
        if (!isEmpty(to)) {
            sql = sql + " and PAYMENTDATE<=TIMESTAMP('" + to + " 00:00:00')";
        }
        ResultSet rs = st.executeQuery(sql);
        List<Payment> paymentList = new ArrayList();
        while (rs.next()) {
            paymentList.add(new Payment(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9)));
        }
        return paymentList;
    }

    public void addPayment(String method, String orderId, String amount, String cardName, String cardNumber, String expiryDate, String cvv) throws SQLException {
        String sql = "insert into PAYMENT(METHOD, AMOUNT, CARDNAME, CARDNUMBER, EXPIRYDATE, CVV, ORDERID) "
                + "values ('"+method+"', "+amount+", '"+cardName+"', '"+cardNumber+"', '"+expiryDate+"', '"+cvv+"', "+orderId+")";
        st.executeUpdate(sql);
    }
    
    public void updatePayment(String pid, String method, String orderId, String amount, String cardName, String cardNumber, String expiryDate, String cvv) throws SQLException {
        String sql = "update PAYMENT set METHOD='"+method+ "', CARDNAME='" + cardName +"', CARDNUMBER='" +cardNumber+"', EXPIRYDATE='" +expiryDate+"', CVV='" +cvv+"' where ID=" + pid;
        System.out.println(sql);
        st.executeUpdate(sql);
    }
    
    public void deletePayment(String pid) throws SQLException {
        String sql = "delete from payment where ID=" + pid;
        st.executeUpdate(sql);
    }

    public boolean isEmpty(String s) {
        return s == null || s.equals("");
    }
}
