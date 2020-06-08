<%-- 
    Document   : customer_item_page
    Created on : 08/06/2020, 4:32:26 PM
    Author     : yujiwon
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Item"%>
<%@page import="model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            DBManager manager =(DBManager) session.getAttribute("manager");
            ArrayList<Item> items = manager.listAllItems();
        %>
        <h3>Item List</h3>
        <form method="post" action="SearchItemServlet">
            <table align="center">
                <p>Search the product you want:</p>
                <br>
                <p>Search:<input type="text" placeholder="" name="search" size="24"></p>
                <input type="submit" value="submit">
        </form>
        <table border="1" cellpadding="5" cellspacing="1">
            <tr>
                <th>Item ID</th>
                <th>Item Name</th>
                <th>Category</th>
                <th>InStock</th>
                <th>Price</th>
                <th>InStockQuantity</th>
                <th>Manufacture ID</th>
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
                </tr>
                <% }%>
        </table>
    </body>
</html>
