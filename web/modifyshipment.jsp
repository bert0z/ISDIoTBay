<%-- 
    Document   : modifyshipment
    Created on : 01/06/2020, 6:38:50 AM
    Author     : bert_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Change Shipment details</h1>
        
        <form method="post" action="AddShipmentServlet">
            <table align="center">
                <tr><td>Shipment ID:</td><td><input type="text" placeholder=${shipment.shipid} name="shipid" required="true"></td></tr>
                <tr><td>Name:</td><td><input type="text" placeholder=${shipment.shipname} name="shipname" required></td></tr>
                <tr><td>Phone Number:</td><td><input type="text" placeholder=${shipment.shipnum} name="shipnum" required></td></tr>
                <tr><td>Shipping Address:</td><td><input type="text" placeholder=${shipment.shipadd} name="shipadd" required></td></tr>
                <tr><td>Postcode:</td><td><input type="text" placeholder=${shipment.shippost} name="shippost" required></td></tr>
                <tr><td>Courier Service:</td><td><input type="text" placeholder=${shipment.shipcour} name="shipcour" required></td></tr>
                <tr><td>Status:</td><td><input type="text" placeholder=${shipment.shipstat} name="shipstat" required></td></tr>
                <tr><td>Date:</td><td><input type="date" placeholder=${shipment.shipdate} name="shipdate" required></td></tr>
                <tr><td>Order ID:</td><td><input type="text" placeholder=${shipment.orderid} name="orderid" required></td></tr>
                <tr><td><input class="button" type="button" onclick="window.location.href = 'index.jsp';" value="Cancel"/><td><input class="button" type="submit" value="Sign In"></td></tr>
            </table>
        </form>
    </body>
</html>
