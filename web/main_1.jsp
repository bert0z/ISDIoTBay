<%-- 
    Document   : main_1
    Created on : 29/04/2020, 4:18:28 PM
    Author     : Hazel
--%>
<%@page import="java.util.Date"%>
<%@page import="model.Staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <title>Dashboard</title>
    </head>
    <body>
        <%
           Staff staff = (Staff)session.getAttribute("staff");
           if (staff!=null){
        %>
        <h1>Staff Dashboard</h1>
        <hr>        
        <%
                Date date = new Date();
                //out.print( "<p align = \"center\">" +date.toString()+"</p>");
        %>
        
           
        <table>
            <thead><th>Name</th><th>Email</th><th>Password</th><th>Contact Number</th><th>Position</th><th>Salary</th>
        <tr><td>${staff.name}</td><td>${staff.email}</td><td>${staff.password}</td><td>${staff.contactnum}</td><td>${staff.position}</td><td>${staff.salary}</td></tr>
        </table>
        <div>
            <a href="edit_1.jsp">Edit Staff Account</a>
            <a href="delete_staff.jsp">Delete Staff Account</a>
            <a href="accessLogs_staff.jsp">Access Logs </a>
            <a href="logout_1.jsp">Logout </a>
        </div>
        <%    } else { %>
        <h1>Main</h1>
        <p>you are not logged In!</p>
        <p><a href="login_staff.jsp">Register</a></p>
        <%   } %>
    </body>
</html>
