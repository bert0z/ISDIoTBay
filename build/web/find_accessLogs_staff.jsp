<%-- 
    Document   : find_accessLogs_customer
    Created on : 2020. 6. 5, 오후 3:20:10
    Author     : soyoung
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.AccessLog"%>
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
        <title>Customer Accesslog Finding Page</title>
    </head>
    <body>
        <%
            Staff staff = (Staff)session.getAttribute("staff");
            DBManager manager = (DBManager) session.getAttribute("manager");
            
        %>
        <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="main_1.jsp">Account</a></li>
                    <li><a href="logout_1.jsp">Logout</a></li>
                </ul>
            </div> 
        </div>
        <h1 align="center">Find Access Logs</h1>
        
        <form method="post" action="find_logs_result_staff.jsp">
            <table align="center">
                <tr><td>Enter Time</td><td><input type="text" placeholder="YYYY-MM-DD" name="timeStamp" required="true"></td></tr>
                
                <tr><td><input class="button" type="button" onclick="window.location.href = 'main_1.jsp';" value="Cancel"/><td><input class="button" type="submit" value="Find"></td></tr>
            </table>
        </form>
    </body>
</html>
