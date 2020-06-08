<%-- 
    Document   : pastshipmentresults
    Created on : 09/06/2020, 12:59:17 AM
    Author     : bert_
--%>

<%@page import="model.Shipment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <title>Past Shipment Results</title>
    </head>
    <body>
        <h1>Past Shipment Results</h1>
        <br>
        <table>
            <thead><th>Shipment ID</th><th>Name</th><th>Phone Number</th><th>Shipping Address</th><th>PostCode</th><th>Courier Service</th><th>Shipment Status</th><th>Shipment Date</th><th>Order ID</th></thead>
        <tr><td>${shipment.shipid}</td><td>${shipment.shipname}</td><td>${shipment.shipnum}</td><td>${shipment.shipadd}</td><td>${shipment.shippost}</td><td>${shipment.shipcour}</td><td>${shipment.shipstat}</td><td>${shipment.shipdate}</td><td>${shipment.orderid}</td></tr>
        </table>
        <center>
        <div class="nav-wrapper">
                <ul>
                    <li><a href="pastshipments.jsp">Search for Another</a></li>
                    <li><a href="main.jsp">Continue to Main</a></li>
                </ul>    

        </div>
        </center>
    </body>
</html>
