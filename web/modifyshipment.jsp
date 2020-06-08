<%-- 
    Document   : modifyshipment
    Created on : 09/06/2020, 12:32:17 AM
    Author     : bert_
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify Shipment</title>
    </head>
    <body>
        <h1>Change Shipment details</h1>
        
        <form method="post" action="ModifyShipmentServlet">
            <table align="center">
                <tr><td></td><td><input type="hidden" value="${shipment.shipid}" name="shipid" required="true"></td></tr>
                <tr><td>Name:</td><td><input type="text" value="${shipment.shipname}" name="shipname" required></td></tr>
                <tr><td>Phone Number:</td><td><input type="text" value="${shipment.shipnum}" name="shipnum" required></td></tr>
                <tr><td>Shipping Address:</td><td><input type="text" value="${shipment.shipadd}" name="shipadd" required></td></tr>
                <tr><td>Postcode:</td><td><input type="text" value="${shipment.shippost}" name="shippost" required></td></tr>
                <tr><td>Courier Service:</td><td><select id ="shipcour" name ="shipcour">
                            <option value = "AusPost">AusPost</option>
                            <option value = "FedEx">FedEx</option>
                            <option value = "DHL">DHL</option>
                            <option value = "StarTrack">StarTrack</option>
                </td></tr>
                <tr><td></td><td><input type="hidden" value="${shipment.shipstat}" name="shipstat" required></td></tr>
                <tr><td></td><td><input type="hidden" value="${shipment.shipdate}" name="shipdate" required></td></tr>
                <tr><td></td><td><input type="hidden" value="${shipment.orderid}" name="orderid" required></td></tr>
                <tr><td><input class="button" type="button" onclick="window.location.href = 'completeorder.jsp';" value="Cancel"/><td><input class="button" type="submit" value="Sign In"></td></tr>
            </table>
        
        </form>
    </body>
</html>
