<%-- 
    Document   : main
    Created on : 29/04/2020, 4:18:28 PM
    Author     : bert_
--%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
    </head>
    <body>
        <%
           User user = (User)session.getAttribute("user");
           if (user!=null){
        %>
        <h1>Student Dashboard</h1>
        <hr>        
        <table>
            <thead><th>Name</th><th>Email</th><th>Password</th><th>Gender</th><th>Favourite Colour</th></thead>
        <tr><td>${user.name}</td><td>${user.email}</td><td>${user.password}</td><td>${user.gender}</td><td>${user.favcol}</td></tr>
        </table>
        <div>
            <a href="edit.jsp">Account </a>
            <a href="shipment.jsp">Order/ShipmentTest </a>
            <a href="logout.jsp">Logout </a>
        </div>
        <%    } else { %>
        <h1>Main</h1>
        <p>you are not logged In!</p>
        <p><a href="register.jsp">Register</a></p>
        <%   } %>
    </body>
</html>
