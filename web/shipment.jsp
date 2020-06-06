<%-- 
    Document   : shipment
    Created on : 31/05/2020, 2:30:16 AM
    Author     : bert_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shipment</title>
    </head>
    <body onload="startTime()">
        <h1>Please enter your Shipment Details!</h1>
        <form method="post" action="AddShipmentServlet">
            <table align="center">
                <tr><td>Shipment ID:</td><td><input type="text" placeholder="" name="shipid" required="true"></td></tr>
                <tr><td>Name:</td><td><input type="text" placeholder="" name="shipname" required></td></tr>
                <tr><td>Phone Number:</td><td><input type="text" placeholder="" name="shipnum" required></td></tr>
                <tr><td>Shipping Address:</td><td><input type="text" placeholder="" name="shipadd" required></td></tr>
                <tr><td>Postcode:</td><td><input type="text" placeholder="" name="shippost" required></td></tr>
                <tr><td>Courier Service:</td><td><input type="text" placeholder="" name="shipcour" required></td></tr>
                <tr><td>Status:</td><td><input type="text" placeholder="" name="shipstat" required></td></tr>
                <tr><td>Date:</td><td><input type="date" placeholder="" name="shipdate" required></td></tr>
                <tr><td>Order ID:</td><td><input type="text" placeholder="" name="orderid" required></td></tr>
                <tr><td><input class="button" type="button" onclick="window.location.href = 'index.jsp';" value="Cancel"/><td><input class="button" type="submit" value="Submit"></td></tr>
            </table>
        </form>
    </body>
</html>
