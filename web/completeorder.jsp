<%-- 
    Document   : completeorder
    Created on : 09/06/2020, 12:25:00 AM
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
        <title>Check Order</title>
    </head>
    <body>
    <center>
        <h1>Are the Details correct?</h1>
    </center>
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
                    <li><a href="modifyshipment.jsp"> Modify</a></li>
                    <li><a href="deleteshipment.jsp"> Delete</a></li>
                    <p class="order-buttons"><a href="confirmedorder.jsp">Confirm Order</a></p>
                </ul>    

        </div>
        </center>
    </body>
</html>
