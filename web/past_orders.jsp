<%-- 
    Document   : pastOrders
    Created on : Jun 1, 2020, 7:11:55 PM
    Author     : danie
--%>

<%@page import="model.Order"%>
<%@page import="model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <title>Past Orders</title>
    </head>
    <%
            Customer customer = (Customer)session.getAttribute("customer");
            Order order = (Order)session.getAttribute("order");
    %>
    <body>
        
           <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="main.jsp">Account</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div> 
        </div>
         <div class="order-wrapper">
        <h1 class="order-heading">Past Orders</h1>
        <table>
            <tr>
                <td class="order-item-headings">Order ID</td>
                <td class="order-item-headings">Order Date</td>
                <td class="order-item-headings">Order Time</td>
                <td class="order-item-headings">Order Status</td>
            </tr>
        <tr>
            <td class="order-list">${order.orderid}</td>
            <td class="order-list">${order.orderdate}</td>
            <td class="order-list">${order.ordertime}</td>
            <td class="order-list">${order.orderstatus}</td>
        </tr>
        </table>
        <div>

    </body>
</html>