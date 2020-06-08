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
        <h1 align="center">Delete Staff Account : <span><%=(updated != null? updated : "")%></span></h1>
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
