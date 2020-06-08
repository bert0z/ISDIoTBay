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
        <title>Item_List</title>
    </head>
    <body>
        <%
            DBManager manager =(DBManager) session.getAttribute("manager");
            ArrayList<Item> items = manager.listAllItems();
        %>
        <h3>Item List</h3>
        <table border="1" cellpadding="5" cellspacing="1">
            <tr>
                <th>Item ID</th>
                <th>Item Name</th>
                <th>Category</th>
                <th>InStock</th>
                <th>Price</th>
                <th>InStockQuantity</th>
                <th>Manufacture ID</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <% for (Item i : items) {%>
                <tr>
                    <td><%=i.getItemid()%></td>
                    <td><%=i.getItemname()%></td>
                    <td><%=i.getCategory()%></td>
                    <td><%=i.isInstock()%></td>
                    <td><%=i.getPrice()%></td>
                    <td><%=i.getInstockquantity()%></td>
                    <td><%=i.getManufactureid()%></td>
                      
                    <td>
                     <p><a href= "item_update.jsp?itemid=<%=i.getItemid()%>">Edit</a></p>
                    </td>
                    <td>
                        <a href="item_delete.jsp?itemid=<%=i.getItemid()%>">Delete</a>
                    </td>
                </tr>
                <% }%>
        </table>
        <a href="item_create.jsp">Create Item</a>
    </body>
</html>
