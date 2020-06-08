<%-- 
    Document   : pastShipmentResults
    Created on : 08/06/2020, 2:30:45 PM
    Author     : bert_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Past Shipment Results</title>
    </head>
    <body>
        <h1>Past Shipment Results</h1>
        <table>
            <thead><th>Shipment ID</th><th>Shipment Name</th><th>Shipment Number</th><th>Shipment Address</th><th>Postcode</th><th>Courier Service</th><th>Status</th><th>Date Shipped</th><th>Order ID</th></thead>
        <tr><td>${shipment.shipid}</td><td>${shipment.shipname}</td><td>${shipment.shipnum}</td><td>${shipment.shipadd}</td><td>${shipment.shippost}</td><td>${shipment.shipcour}</td><td>${shipment.shipstat}</td><td>${shipment.shipdate}</td><td>${shipment.orderid}</td></tr>
        </table>
        
        <a href="pastShipments.jsp">Search for Another</a>
        <a href="main.jsp">Continue to Main</a>
    </body>
</html>
