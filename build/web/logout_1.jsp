<%-- 
    Document   : logout_1
    Created on : 29/04/2020, 5:27:03 PM
    Author     : Hazel
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.dao.DBManager"%>
<%@page import="model.Staff"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <title>Logout</title>
    </head>
    <body>
        <%
            Staff staff = (Staff)session.getAttribute("staff");
            DBManager manager = (DBManager)session.getAttribute("manager"); 
            String email = staff.getEmail();
            Date date = new Date();
            SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            
            String timeStamp=formatter.format(date);
            
            if (staff != null) {
                manager.addAccessLog("Logout", timeStamp, email,"staff");
            }    
        %>
        <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="login_staff.jsp">Login</a></li>
                    <li><a href="register_staff.jsp">Register</a></li>
                </ul>
            </div> 
        </div>
        <h1 align="center">Logged Out!</h1>
        <p>you have logged out click <a href="index.jsp">here</a> to go to the home page.</p>
        <% session.invalidate(); %>
    </body>
</html>
