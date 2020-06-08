<%-- 
    Document   : customeritemsearch
    Created on : 08/06/2020, 6:35:45 PM
    Author     : yujiwon
--%>

<%@page import="model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Item item = (Item)session.getAttribute("item");
        %>
        <h1>Searched Item</h1>
       <table>
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
                <tr>
                    <td><%=item.getItemid()%></td>
                    <td><%=item.getItemname()%></td>
                    <td><%=item.getCategory()%></td>
                    <td><%=item.isInstock()%></td>
                    <td><%=item.getPrice()%></td>
                    <td><%=item.getInstockquantity()%></td>
                    <td><%=item.getManufactureid()%></td>
                </tr>
        </table>
        </table>
        <a href="customer_item_page.jsp">Go back to the catalogue</a>
    </body>
</html>
