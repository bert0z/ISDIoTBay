<%-- 
    Document   : orderAll
    Created on : Jun 6, 2020, 5:37:41 PM
    Author     : danie
--%>

 <%@page import="java.util.ArrayList"%>
<%@page import="model.Order"%>
<%@page import="model.Customer"%>
<%@page import="model.dao.DBManager"%>

   <head>
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account</title>
    </head>
<%
            DBManager manager = (DBManager) session.getAttribute("manager");
            ArrayList<Order> items = manager.listOrderAllOrders();
            int itemQty = 1;   
            Customer customer = (Customer)session.getAttribute("customer");
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
        <h1 class="order-heading">Your Orders</h1>
         <table class = "order-table">
               <tr>
                    <td class="order-item-headings">Order ID</td>
                    <td class="order-item-headings">Order Date</td>
                    <td class="order-item-headings">Order Time</td>
                    <td class="order-item-headings">Order Status</td>
                </tr>
                 <% 
                     
                        for (Order o : items) {
     
                 
                 %>
                    <tr>
                        <td class="order-list"><%= o.getOrderid()%></td>
                        <td class="order-list"><%= o.getOrderdate()%></td>
                        <td class="order-list"><%= o.getOrdertime() %></td>
                        <td class="order-list"><%= o.getOrderstatus()%></td>
   
                       
                    </tr>
                    <%  
                    } %>
                    
            </table>
        <p class="order-buttons"><a href="past_orders_search.jsp">Search Past Orders</a></p>
        </div>
    </body>
</html>
