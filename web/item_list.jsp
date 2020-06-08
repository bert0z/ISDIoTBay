<%@page import="java.sql.ResultSet"%>
<%@page import="model.dao.DBManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Item"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : item
    Created on : 18/05/2020, 4:05:25 PM
    Author     : yujiwon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff_Catalogue</title>
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
    </head>
        
    <body>
        <%
            DBManager manager =(DBManager) session.getAttribute("manager");
            ArrayList<Item> items = manager.listAllItems();
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
        <h1 class="order-heading">Catalog</h1>
        <h3>Item List</h3>
        <a href="item_create.jsp">Create Item</a>
        <table class="order-table" border="1" cellpadding="5" cellspacing="1">
            <tr>
                <th class="order-item-headings">Item ID</th>
                <th class="order-item-headings">Item Name</th>
                <th class="order-item-headings">Category</th>
                <th class="order-item-headings">InStock</th>
                <th class="order-item-headings">Price</th>
                <th class="order-item-headings">InStockQuantity</th>
                <th class="order-item-headings">Manufacture ID</th>
                <th class="order-item-headings">Edit</th>
                <th class="order-item-headings">Delete</th>
            </tr>
            <% for (Item i : items) {%>
                <tr>
                    <td class="order-list"><%=i.getItemid()%></td>
                    <td class="order-list"><%=i.getItemname()%></td>
                    <td class="order-list"><%=i.getCategory()%></td>
                    <td class="order-list"><%=i.isInstock()%></td>
                    <td class="order-list"><%=i.getPrice()%></td>
                    <td class="order-list"><%=i.getInstockquantity()%></td>
                    <td class="order-list"><%=i.getManufactureid()%></td>
                      
                    <td>
                     <p><a href= "item_update.jsp?itemid=<%=i.getItemid()%>">Edit</a></p>
                    </td>
                    <td>
                        <a href="item_delete.jsp?itemid=<%=i.getItemid()%>">Delete</a>
                    </td>
                </tr>
                <% }%>
        </table>
        </div>
        </body>
</html>
