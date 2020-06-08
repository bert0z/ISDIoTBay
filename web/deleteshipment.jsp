<%-- 
    Document   : deleteshipment
    Created on : 09/06/2020, 12:34:22 AM
    Author     : bert_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Are you sure?</title>
    </head>
    <body>
        <h1>Are you sure you wanted to delete shipment?</h1>
        <p>
        <form method="post" action="DeleteShipmentServlet">
            <table align="center">
                <tr><td>Shipment ID:</td><td><input type="text" value="${shipment.shipid}" name="shipid" required="true"></td></tr>
                <tr><td>Date:</td><td><input type="date" value="${shipment.shipdate}" name="shipdate" required></td></tr>
                <tr><td><input class="button" type="button" onclick="window.location.href = 'index.jsp';" value="No"/><td><input class="button" type="submit" value="Yes"></td></tr>
            </table>

        </form>
        </p>
    </body>
</html>
