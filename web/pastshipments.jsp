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
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <title>Past Shipments</title>
    </head>
    <body onload="startTime()">
        <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="index.jsp">Index</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div> 
        </div>
        <h1 align="center">Past Shipments</h1>
        <hr>
        <form method="post" action="FindShipmentServlet">
            <table align="center">
                <tr><td>Shipment ID:</td><td><input type="text" placeholder="Enter 5 Digit Shipment ID" name="shipid" required="true"></td></tr>
                <tr><td>Date:</td><td><input type="text" placeholder="yyyy-mm-dd" name="shipdate" required="true"></td></tr>
                <tr><td><input class="button" type="button" onclick="window.location.href = 'main.jsp';" value="Cancel"/><td><input class="button" type="submit" value="Submit"></td></tr>
            </table>
        </form>
    </body>
</html>

