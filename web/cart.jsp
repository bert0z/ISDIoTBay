<%-- 
    Document   : cart
    Created on : Jun 2, 2020, 1:35:40 PM
    Author     : danie
--%>

<%@page import="model.dao.DBManager"%>
<%@page import="model.OrderLine"%>
<%@page import="model.Order"%>
<%@page import="model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
         <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
    </head>
    
 
        <%
            DBManager manager = (DBManager) session.getAttribute("manager");
            ArrayList<OrderLine> items = manager.listOrderLineItems();
            int itemQty = 1;
            String added = request.getParameter("Add");
            
        %>
        
    
    <body>
        
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
        <h1 class="order-heading">Your Cart</h1>
         <table class = "order-table">
               <tr>
                    <td class="order-item-headings">Item ID</td>
                    <td class="order-item-headings">Item Name</td>
                    <td class="order-item-headings">Quantity</td>
                    <td class="order-item-headings">Price</td>
                </tr>
                 <% 
                     
                        for (OrderLine o : items) {
                 if (o.isIncart() == true) {
                 
                 %>
                    <tr>
                        <td class="order-list"><%= o.getItemid()%></td>
                        <td class="order-list"><%= o.getItemname()%></td>
                        <td class="order-list"><%= itemQty %></td>
                        <td class="order-list"><%= o.getItemprice()%></td>
                       <td><form method ="post" action ="RemoveFromCartServlet">
                                <input type ="hidden" name ="itemid" value="<%= o.getItemid()%>"/>
                                <input type ="hidden" name ="itemname" value="<%= o.getItemname()%>"/>
                                <input type ="hidden" name ="itemprice" value="<%= o.getItemprice()%>"/>
                                <input type ="hidden" name ="incart" value="false"/>
                                <input type="submit" name="remove" value="Remove From Cart"></form></td>    
                       
                    </tr>
                    <%  
                   } } %>
                    
            </table>
              <div class = "order-buttons">
                <p class="login-btn"><a href="product_list.jsp" class="link">Add More Items</a></p>
                <p><a href="shipment.jsp">To Shipment</a></p>
              </div>
        </div>
    </body>
</html>
