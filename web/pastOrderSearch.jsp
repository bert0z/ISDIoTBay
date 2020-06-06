<%-- 
    Document   : pastOrderSearch
    Created on : Jun 2, 2020, 3:05:30 PM
    Author     : danie
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Past Orders</title>
    </head>
    <%
            User user = (User)session.getAttribute("user");
        %>
    <body onload="startTime()">
        <h1>Past Orders</h1>
        
        <form method="post" action="FindOrdersServlet">
            <table align="center">
                <tr><td>Order ID:</td><td><input type="text" placeholder="" name="orderid" required="true"></td></tr>
                <tr><td>Order Date:</td><td><input type="text" placeholder="" name="orderdate" required="true"></td></tr>
                <tr><td><input class="button" type="button" onclick="window.location.href = 'welcome.jsp';" value="Cancel"/><td><input class="button" type="submit" value="Submit"></td></tr>
            </table>
        </form>
    </body>
</html>

