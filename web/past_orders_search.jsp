<%-- 
    Document   : pastOrderSearch
    Created on : Jun 2, 2020, 3:05:30 PM
    Author     : danie
--%>


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
        %>
        
      <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="main.jsp">Account</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div> 
        </div>
    <body onload="startTime()">
        <div class="order-wrapper">
        <h1 class="order-heading">Past Orders</h1>
        
        <form method="post" action="FindOrdersServlet">
            <table align="center">
                <tr>
                    <td class="label">Order ID:</td><td><input type="text" placeholder="" name="orderid" required="true"></td>
                </tr>
                <tr>
                    <td class="label">Order Date:</td><td><input type="text" placeholder="" name="orderdate" required="true"></td>
                </tr>
                <tr>
                     <div class = "order-buttons">
                    <td>
                        <p class="order-buttons"><input class="button" type="button" onclick="window.location.href = 'all_orders.jsp';" value="Cancel" /><td></p>
                        <p class="order-buttons"><input class="order-submit" type="submit" value="Submit"></td></p>
                     </div>

                </tr>
            </table>
        </form>
        </div>
    </body>
</html>

