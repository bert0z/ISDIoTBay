<%-- 
    Document   : accessLogs_customer
    Created on : 04/06/2020, 8:40:29 PM
    Author     : Hazel
--%>

<%@page import="model.AccessLog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="model.dao.DBManager"%>
<%@page import="model.Customer"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <title>Access Logs</title>
    </head>
    <body>
        <%
            
            DBManager manager = (DBManager) session.getAttribute("manager");
            Customer customer = (Customer) session.getAttribute("customer");
            ArrayList<AccessLog> accesslog = manager.listAccessLogs(customer.getEmail());
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
            <a href="main.jsp">Main Page</a>
    </body>
</html>

