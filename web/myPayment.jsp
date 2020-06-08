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
        <h1>My Payments</h1>
        <form>
            <div>
                Payment ID: <input type="text" name="pid">
            </div>
            <div>
                From: <input type="date" name="from"> &nbsp;
                To: <input type="date" name="to">
                <button type="submit">Search</button>
            </div>
        </form>

        <table>
            <tr>
                <th>ID</th>
                <th>Method</th>
                <th>Amount</th>
                <th>Card Name</th>
                <th>Date</th>
                <th>OrderID</th>
                <th></th>
            </tr>
            <%
                List<Payment> paymentList = (List<Payment>) request.getAttribute("paymentList");
                for (Payment p : paymentList) {
            %>
            <tr>
                <td><%= p.getId()%></td>
                <td><%= p.getMethod()%></td>
                <td><%= p.getAmount()%></td>
                <td><%= p.getCardName()%></td>
                <td><%= p.getDate()%></td>
                <td><%= p.getOrderId()%></td>
                <td>
                    <a href="DeletePayment?pid=<%= p.getId()%>">Delete</a>
                    <a href="UpdatePayment?pid=<%= p.getId()%>">Update</a>
                </td>
            </tr>
            <%
                }
            %>

        </table>
        <button onclick="window.location.href='addPayment.jsp?orderId=00000001&amount=298.0'">Add Payment</button>
    </body>
</html>
