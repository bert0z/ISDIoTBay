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

            <tr>
                <td><b>Shipment ID:</b></td><td>${shipment.shipid}</td>
            </tr>
            <tr>
                <td><b>Name:</b></td><td>${shipment.shipname}</td>
            </tr>
            <tr>
                <td><b>Phone Number:</b></td><td>${shipment.shipnum}</td>
            </tr>
            <tr>
                <td><b>Shipping Address:</b></td><td>${shipment.shipadd}</td>
            </tr>
            <tr>
                <td><b>Postcode:  </b></td><td>${shipment.shippost}</td>
            </tr>
            <tr>
                <td><b>Courier Service:  </b></td><td>${shipment.shipcour}</td>
            </tr>
            <tr>
                <td><b>Shipment Status:  </b></td><td>${shipment.shipstat}</td>
            </tr>
            <tr>
                <td><b>Shipment Date:  </b></td><td>${shipment.shipdate}</td>
            </tr>
            <tr>
                <td><b>Order ID:  </b></td><td>${shipment.orderid}</td>
            </tr>
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
