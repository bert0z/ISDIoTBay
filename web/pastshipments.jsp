<%-- 
    Document   : past shipments
    Created on : 09/06/2020, 12:56:56 AM
    Author     : bert_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Past Shipments</title>
    </head>
    <body onload="startTime()">
        <h1>Past Shipments</h1>
        
        <form method="post" action="FindShipmentServlet">
            <table align="center">
                <tr><td>Shipment ID:</td><td><input type="text" placeholder="" name="shipid" required="true"></td></tr>
                <tr><td>Date:</td><td><input type="text" placeholder="" name="shipdate" required="true"></td></tr>
                <tr><td><input class="button" type="button" onclick="window.location.href = 'main.jsp';" value="Cancel"/><td><input class="button" type="submit" value="Submit"></td></tr>
            </table>
        </form>
    </body>
</html>

