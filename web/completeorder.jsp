<%-- 
    Document   : completeorder
    Created on : 31/05/2020, 2:30:30 AM
    Author     : bert_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Order</title>
    </head>
    <body>
        <h1>Are the Details correct</h1>
        <table>
            <thead><th>Name</th><th>Email</th><th>Password</th><th>Gender</th><th>Favourite Colour</th></thead>
        <tr><td>${shipment.shipid}</td><td>${shipment.shipname}</td><td>${shipment.shipcour}</td><td>${shipment.shipadd}</td><td>${shipment.shipdate}</td></tr>
        </table>
        <a href="modifyshipment.jsp"> Modify</a>
    </body>
</html>
