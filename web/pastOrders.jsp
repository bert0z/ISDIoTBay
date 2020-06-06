<%-- 
    Document   : pastOrders
    Created on : Jun 1, 2020, 7:11:55 PM
    Author     : danie
--%>

<%@page import="model.Order"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Past Orders</title>
    </head>
    <%
            User user = (User)session.getAttribute("user");
            Order order = (Order)session.getAttribute("order");
    %>
    <body>
        <h1>Past Orders</h1>
        <table>
            <thead><th>Order ID</th><th>Order Date</th><th>Order Time</th><th>Order Status</th></thead>
        <tr><td>${order.orderid}</td><td>${order.orderdate}</td><td>${order.ordertime}</td><td>${order.orderstatus}</td></tr>
        </table>

    </body>
</html>