<%-- 
    Document   : accessLogs_staff
    Created on : 04/06/2020, 8:40:29 PM
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
        <title>Access Logs</title>
    </head>
    <body>
        <%
            
            DBManager manager = (DBManager) session.getAttribute("manager");
            Staff staff = (Staff) session.getAttribute("staff");
            ArrayList<AccessLog> accesslog = manager.listAccessLogs(staff.getEmail());
        %>
        
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
