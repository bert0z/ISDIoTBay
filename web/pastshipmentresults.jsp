<%-- 
    Document   : pastshipmentresults
    Created on : 09/06/2020, 12:59:17 AM
    Author     : bert_
--%>

<%@page import="model.Shipment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <title>Past Shipment Results</title>
    </head>
    <body>
        <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="index.jsp">Index</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div> 
        </div>
        <h1 align="center">Past Shipment Results</h1>
        <hr>
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
        <div class="nav-wrapper">
                <ul>
                    <li><a href="pastshipments.jsp">Search for Another</a></li>
                    <li><a href="main.jsp">Continue to Main</a></li>
                </ul>    

        </div>
        </center>
    </body>
</html>
