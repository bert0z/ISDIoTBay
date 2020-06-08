<%-- 
    Document   : shipment
    Created on : 09/06/2020, 12:23:24 AM
    Author     : bert_
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <title>Shipment</title>
    </head>
    <body onload="startTime()">
        <%
        Random rand = new Random();
        int n = rand.nextInt(90000) + 10000;
        %>
    <center>
        <h1>Please enter your Shipment Details!</h1>
    </center>
        <hr>
        <form method="post" action="AddShipmentServlet">
            <table align="center">
                <tr><td></td><td><input type="hidden" placeholder="" name="shipid" value="<%=n%>" required="true"></td></tr>
                <tr><td>Name:</td><td><input type="text" placeholder="Enter Shipping Name" name="shipname" required></td></tr>
                <tr><td>Phone Number:</td><td><input type="text" placeholder="Enter Your Phone Number" name="shipnum" required></td></tr>
                <tr><td>Shipping Address:</td><td><input type="text" placeholder="Enter Your Address" name="shipadd" required></td></tr>
                <tr><td>Postcode:</td><td><input type="text" placeholder="Enter your Postcode" name="shippost" required></td></tr>
                <tr><td>Courier Service:</td><td><select id ="shipcour" name ="shipcour">
                            <option value = "AusPost">AusPost</option>
                            <option value = "FedEx">FedEx</option>
                            <option value = "DHL">DHL</option>
                            <option value = "StarTrack">StarTrack</option>
                </td></tr>
                <tr><td></td><td><input type="hidden" value="Shipped" name="shipstat" required></td></tr>
                <tr><td></td><td><input type="hidden" value="<%=LocalDate.now()%>" name="shipdate" ></td></tr>
                <tr><td></td><td><input type="hidden" value="123" name="orderid" required></td></tr>
                <tr><td><input class="button" type="button" onclick="window.location.href = 'index.jsp';" value="Cancel"/><td><input class="button" type="submit" value="Submit"></td></tr>
            </table>
        </form>
    </body>
</html>