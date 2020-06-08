<%-- 
    Document   : welcome_1
    Created on : 08/04/2020, 4:20:45 PM
    Author     : Hazel
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="model.dao.DBManager"%>
<%@page import="model.Staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <title>Welcome Page</title>
    </head>
        <%
            Staff staff = (Staff)session.getAttribute("staff");
            
            DBManager manager = (DBManager)session.getAttribute("manager"); 
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            Date date = new Date();
            SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            
            String timeStamp=formatter.format(date);

            
            if (staff != null) {
                manager.addAccessLog("Login", timeStamp, email,"staff");
            }    
        %>
    <style>
    </style>
    <body>
        <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="main_1.jsp">Account</a></li>
                    <li><a href="logout_1.jsp">Logout</a></li>
                </ul>
            </div> 
        </div>
        
        <h1 align="center">Welcome, ${staff.name}!</h1>
    <center>
        <p>Your Email is ${staff.email} </p>

        <div class="nav-wrapper">
                <ul>
                    <li><a href ="index.jsp">Cancel</a></li>
                    <li><a href ="main_1.jsp">Main</a></li><br>
                    
                </ul>    
        </div>
        <%
            session.setAttribute("staff", staff);
        %>
    </center>
    </body>
</html>
    

