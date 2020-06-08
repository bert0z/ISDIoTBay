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
        <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="index.jsp">Index</a></li>
                    <li><a href="logout_1.jsp">Logout</a></li>
                </ul>
            </div> 
        </div>
        <h1 align="center">Staff Dashboard</h1>
        
        <%
                Date date = new Date();
        %>
        

          <center> 
             <table>
            <tr>
                <td><b>Name:</b></td><td>${staff.name}</td>
            </tr>
            <tr>
                <td><b>Email:</b></td><td>${staff.email}</td>
            </tr>
            <tr>
                <td><b>Contact Number:   </b></td><td>${staff.contactnum}</td>
            </tr>
            <tr>
                <td><b>Position:</b></td><td>${staff.position}</td>
            </tr>
            <tr>
                <td><b>Salary:</b></td><td>${staff.salary}</td>
            </tr>
        </table>
        
        <br><br>
        <center>
        <div class="nav-wrapper">
                <ul>
                    <li><a href="edit_1.jsp">Edit Staff Account</a></li>
                    <li><a href="delete_staff.jsp">Delete Staff Account</a></li><br>
                    <li><a href="accessLogs_staff.jsp">View Access Logs List</a></li>
                    <li><a href="find_accessLogs_staff.jsp">Find Access Logs</a></li>
                    <li><a href="item_list.jsp">Staff_Catalogue</a></li>
                    <li><a href="logout_1.jsp">Logout </a></li>
                </ul>    

        </div>
        
    </center>
        
        <%    } else { %>
        <center>
        <h1>Main</h1>
        <p>you are not logged In!</p>
        <div class="nav-wrapper">
            <ul><li><a href="login_staff.jsp">Register</a></li></ul>
        </div>
        <%   } %>
    </center>
    </body>
</html>
