<%-- 
    Document   : completeorder
    Created on : 09/06/2020, 12:25:00 AM
    Author     : bert_
--%>

<%@page import="model.Shipment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Order</title>
    </head>
    <body>
        <%
            Shipment shipment = (Shipment)session.getAttribute("shipment");
        %>
        <h1>Are the Details correct?</h1>
        <table>
            <thead><th>Shipment ID</th><th>Name</th><th>Phone Number</th><th>Shipping Address</th><th>PostCode</th><th>Courier Service</th><th>Shipment Status</th><th>Shipment Date</th><th>Order ID</th></thead>
        <tr><td>${shipment.shipid}</td><td>${shipment.shipname}</td><td>${shipment.shipnum}</td><td>${shipment.shipadd}</td><td>${shipment.shippost}</td><td>${shipment.shipcour}</td><td>${shipment.shipstat}</td><td>${shipment.shipdate}</td><td>${shipment.orderid}</td></tr>
        </table>
        <a href="modifyshipment.jsp"> Modify</a>
        <a href="deleteshipment.jsp"> Delete</a>
    </body>
</html>
