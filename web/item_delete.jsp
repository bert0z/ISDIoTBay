<%-- 
    Document   : item_delete
    Created on : 08/06/2020, 12:09:57 PM
    Author     : yujiwon
--%>

<%@page import="model.dao.DBManager"%>
<%@page import="model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>item delete confirmation</title>
        <title>Cart</title>
         <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
    </head>
    <body>
        <%
            int itemid = Integer.parseInt(request.getParameter("itemid"));
            DBManager manager =(DBManager) session.getAttribute("manager");
            Item item = manager.findItemid(itemid);
            String updated = (String) session.getAttribute("updated");
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
        <div class="order-wrapper">
        <h1 class="order-heading">Delete the Item:<%=(updated != null ? updated: "")%><h1>
        <form method="post" action="DeleteItemServlet">
            <table class = "order-table">
     
                <tr lass="order-item-headings"><td>Item ID:</td><td class="order-list"><input name="itemid" required="true" value="<%=item.getItemid()%>"></td></tr>
                <tr lass="order-item-headings"><td>Item Name:</td><td class="order-list"><input name="itemname" required="true" value="<%=item.getItemid()%>"></td><tr>
            </table>
            <p> Are you sure you want to delete this item from the catalogue? </p>
            <input type="submit" value="Delete"></td></tr>
        </form>
            <a href="item_list.jsp" >Cancel<a> 
            </div>
    </body>
</html>
