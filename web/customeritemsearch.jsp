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
        <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="main.jsp">Main</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div> 
        </div>
       <div class="order-wrapper">
       <h1 h1 class="order-heading">Searched Item</h1>
       <table class="order-table" border="1" cellpadding="5" cellspacing="1">
            <tr>
                <th class="order-item-headings">Item ID</th>
                <th class="order-item-headings">Item Name</th>
                <th class="order-item-headings">Category</th>
                <th class="order-item-headings">InStock</th>
                <th class="order-item-headings">Price</th>
                <th class="order-item-headings">InStockQuantity</th>
                <th class="order-item-headings">Manufacture ID</th>
                <th class="order-item-headings">Add to Cart</th>
            </tr>
                <tr>
                    <td class="order-list"><%=item.getItemid()%></td>
                    <td class="order-list"><%=item.getItemname()%></td>
                    <td class="order-list"><%=item.getCategory()%></td>
                    <td class="order-list"><%=item.isInstock()%></td>
                    <td class="order-list"><%=item.getPrice()%></td>
                    <td class="order-list"><%=item.getInstockquantity()%></td>
                    <td class="order-list"><%=item.getManufactureid()%></td>
                    <td class="order-list">
                        <form method ="post" action ="AddToCartServlet">
                        <input type ="hidden" name ="itemid" value="<%= item.getItemid()%>"/>
                        <input type ="hidden" name ="itemname" value="<%= item.getItemname()%>"/>
                        <input type ="hidden" name ="itemprice" value="<%= item.getPrice()%>"/>
                        <input type ="hidden" name ="incart" value="true"/>
                        <input type="submit" name="incart" value="Add to Cart">
                    </td>
                </form>
                </tr>
        </table>
                        <p class="orders-buttons"><a href="customer_item_page.jsp">Go back to the catalogue</a></p>
        </div>
    </body>
</html>
