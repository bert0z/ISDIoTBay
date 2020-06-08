<%-- 
    Document   : confirmedorder
    Created on : 09/06/2020, 1:16:47 AM
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
        <title>Congrats!</title>
    </head>
    <body>
        <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div> 
        </div>
        <h1 align="center">Your Order has been placed!!</h1>
        <br>
        <table>
            <thead><th>Shipment ID</th><th>Name</th><th>Phone Number</th><th>Shipping Address</th><th>PostCode</th><th>Courier Service</th><th>Shipment Status</th><th>Shipment Date</th><th>Order ID</th></thead>
        <tr><td>${shipment.shipid}</td><td>${shipment.shipname}</td><td>${shipment.shipnum}</td><td>${shipment.shipadd}</td><td>${shipment.shippost}</td><td>${shipment.shipcour}</td><td>${shipment.shipstat}</td><td>${shipment.shipdate}</td><td>${shipment.orderid}</td></tr>
        </table>
        <center>
            <p>
            Please Save Your Shipment ID and Date for Shipment Lookup!
        </p>
        <div class="nav-wrapper">
                <ul>
                    <li><a href="main.jsp"> Return to Main</a></li>
                </ul>    

        </div>
        </center>
    </body>
</html>
