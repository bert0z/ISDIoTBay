<%-- 
    Document   : delete_staff
    Created on : 29/04/2020, 5:41:21 PM
    Author     : Hazel
--%>
<%@page import="model.Staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <title>Delete Staff Account</title>
    </head>
    <body>
        <%
            Staff staff = (Staff)session.getAttribute("staff");
            String updated = (String)session.getAttribute("updated");
            //<tr><td>Current Email:</td><td><input type="text"  name="curr_email" required="true" value="${customer.email}"></td></tr>
        %>
        <h1>Delete Staff Account : <span><%=(updated != null? updated : "")%></span></h1>
        <form method="post" action="DeleteServlet_Staff">
            <table>
     
                <tr><td>Email:</td><td><input type="text"  name="email" required="true" value="${staff.email}"></td></tr>
                <tr><td>Password:</td><td><input type="password"  name="password" required="true" value="${staff.password}"></td></tr>
                    </td></tr>
                <tr><td></td><td><input type="submit" value="Delete"></td></tr>
            </table>
        </form>
                    <a href="main_1.jsp" >Main page</a>  
    </body>
</html>
