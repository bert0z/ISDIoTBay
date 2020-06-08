<%-- 
    Document   : find_logs_result_customer
    Created on : 05/06/2020, 8:40:29 PM
    Author     : Hazel
--%>

<%@page import="model.AccessLog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="model.dao.DBManager"%>
<%@page import="model.Staff"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <title>Find Access Logs : Result</title>
    </head>
    <body>
        <%
            DBManager manager = (DBManager) session.getAttribute("manager");
            Staff staff = (Staff) session.getAttribute("staff");
            String timeStamp = request.getParameter("timeStamp");

            ArrayList<AccessLog> accesslog = manager.findLogsByTime(staff.getEmail(), timeStamp);
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
        
         <h1 align="center">Staff Access Logs : Search Results</h1>
            <table align="center">
                <tr>
                    <th>Event</th>
                    <th>Time</th>
                    <th>Account Type</th>
                    <th> </th>
                </tr>
                <% for (AccessLog al : accesslog) {%>
                <tr>
                    <td><%=al.getAccessType()%></td><td><%=al.getTime()%></td><td><%=al.getAccountType()%></td>
                </tr>
                <% }%>
            </table>
            <a href="main_1.jsp">Main Page</a>
    </body>
</html>

