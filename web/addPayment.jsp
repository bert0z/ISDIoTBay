<%-- 
    Document   : myPayment
    Created on : 2020-6-1, 22:59:09
    Author     : caojingwen
--%>

<%@page import="model.Payment"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Make Payments</h1>
        <form action="AddPaymentServlet" method="POST">
            <table>
                <tr>
                    <th>Method</th>
                    <td>
                        <select name="method">
                            <option>Direct Deposit</option>
                            <option>Credit Card</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>Order ID</th>
                    <td>
                        <input type="text" name="orderId" readonly="true" value="<%=request.getParameter("orderId")%>">
                    </td>
                </tr>
                <tr>
                    <th>Amount</th>
                    <td>
                        <input type="text" name="amount" readonly="true" value="<%=request.getParameter("amount")%>">
                    </td>
                </tr>
                <tr>
                    <th>Card Name</th>
                    <td>
                        <input type="text" name="cardName">
                    </td>
                </tr>
                <tr>
                    <th>Card Number</th>
                    <td>
                        <input type="text" name="cardNumber">
                    </td>
                </tr>
                <tr>
                    <th>Expiry Date</th>
                    <td>
                        <input type="text" name="expiryDate">
                    </td>
                </tr>
                <tr>
                    <th>CVV</th>
                    <td>
                        <input type="text" name="cvv">
                    </td>
                </tr>
            </table>
            <button type="submit">Pay</button>
        </form>
    </body>
</html>
