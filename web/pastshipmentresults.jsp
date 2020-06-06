<%-- 
    Document   : pastshipmentresults
    Created on : 30/05/2020, 9:39:33 PM
    Author     : bert_
--%>

<%@page import="model.Shipment"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Past Shipment Results</title>
    </head>
    <%
            User user = (User)session.getAttribute("user");
            Shipment shipment = (Shipment)session.getAttribute("shipment");
    %>
    <body>
        <h1>Past Shipment Results</h1>
        <table>
            <thead><th>Name</th><th>Email</th><th>Password</th><th>Gender</th><th>Favourite Colour</th></thead>
        <tr><td>${shipment.shipid}</td><td>${shipment.shipname}</td><td>${shipment.shipcour}</td><td>${shipment.shipadd}</td><td>${shipment.shipdate}</td></tr>
        </table>
        <a href="pastshipments.jsp">Search for Another</a>
        <a href="welcome.jsp">Go Back to Welcome</a>
        <a href="main.jsp">Continue to Main</a>
    </body>
</html>
