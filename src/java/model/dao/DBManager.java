/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import model.Customer;
import model.Shipment;
import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import model.AccessLog;
import model.Item;
import model.Staff;
import model.Order;
import model.OrderLine;

/* 
* DBManager is the primary DAO class to interact with the database. 
* Complete the existing methods of this classes to perform CRUD operations with the db.
*/

public class DBManager {

    private Statement st;
   
    public DBManager(Connection conn) throws SQLException {       
        st = conn.createStatement();   
    }

//Find user by email and password in the database   
    public Customer findCustomer(String email, String password) throws SQLException {       
        //setup the select sql query string  
        //execute this query using the statement field 
        String fetch = "SELECT * FROM IOTUSER.CUSTOMER WHERE EMAIL ='"+ email +"'AND PASSWORD='"+ password +"'";
        //add the results to a ResultSet     
        ResultSet rs = st.executeQuery(fetch);       
        //add the results to a ResultSet       
        //search the ResultSet for a user using the parameters   
        while(rs.next()) {
            String customerEmail = rs.getString(1);
            String customerPass = rs.getString(3);
            if(customerEmail.equals(email) && customerPass.equals(password)){
                String customerName = rs.getString(2);
                String customerAddress = rs.getString(4);
                int customerPostcode = Integer.parseInt(rs.getString(5));
                int customerContactNum = Integer.parseInt(rs.getString(6));
                
                return new Customer(customerEmail,customerName,customerPass,customerAddress,customerPostcode,customerContactNum);
            }
        }            
        return null;   
    }
    
    public Staff findStaff(String email, String password) throws SQLException {       
        //setup the select sql query string  
        //execute this query using the statement field 
        String fetch = "SELECT * FROM IOTUSER.STAFF WHERE EMAIL ='"+ email +"'AND PASSWORD='"+ password +"'";
        //add the results to a ResultSet     
        ResultSet rs = st.executeQuery(fetch);       
        //add the results to a ResultSet       
        //search the ResultSet for a user using the parameters   
        while(rs.next()) {
            String staffEmail = rs.getString(1);
            String staffPass = rs.getString(3);
            if(staffEmail.equals(email) && staffPass.equals(password)){
                String staffName = rs.getString(2);
                int staffContactNum = Integer.parseInt(rs.getString(4));
                String staffPosition = rs.getString(5);
                double staffSalary = Double.parseDouble(rs.getString(6));
                
                return new Staff(staffName,staffEmail,staffPass,staffContactNum,staffPosition,staffSalary);
            }
        }            
        return null;   
    }
    
    public AccessLog findAccessLog(String email) throws SQLException {       
        //setup the select sql query string  
        //execute this query using the statement field 
        String fetch = "SELECT * FROM IOTUSER.ACCESSLOG WHERE EMAIL ='"+ email +"'";
        //add the results to a ResultSet     
        ResultSet rs = st.executeQuery(fetch);       
        //add the results to a ResultSet       
        //search the ResultSet for a user using the parameters   
        while(rs.next()) {
            
            String userEmail = rs.getString(3);
            if(userEmail.equals(email) ){
                String accessType = rs.getString(1);
                String time = rs.getString(2);
                String accountType = rs.getString(4);
                
                return new AccessLog(accessType, time, userEmail, accountType);
            }
        }            
        return null;   
    }
    

//Add a user-data into the database   
    public void addCustomer(String email, String name, String password, String address, int postcode, int contactnum) throws SQLException {                   //code for add-operation       
        st.executeUpdate("INSERT INTO IOTUSER.CUSTOMER " + "VALUES ('"+ email +"','"+ name +"','"+ password +"','"+address+"',"+postcode+","+contactnum+")");   

    }
    
    public void addStaff(String email, String name, String password, int contactnum, String position, double salary) throws SQLException {                   //code for add-operation       
        st.executeUpdate("INSERT INTO IOTUSER.STAFF " + "VALUES ('"+ email +"','"+ name +"','"+ password +"',"+contactnum+",'"+position+"',"+salary+")");   

    }
    
    public void addAccessLog(String accessType, String time, String email, String accountType) throws SQLException {                   //code for add-operation       
        st.executeUpdate("INSERT INTO IOTUSER.ACCESSLOG " + "VALUES ('"+ accessType +"','"+ time +"','"+ email +"','"+accountType+"')");   

    }

//update a user details in the database   
    public void updateCustomer(String curremail, String email, String name, String password, String address, int postcode, int contactnum) throws SQLException { 
        st.executeUpdate("UPDATE IOTUSER.CUSTOMER SET EMAIL='"+email+"',NAME='"+name+"',PASSWORD='"+password+"',ADDRESS='"+address+"',POSTCODE="+postcode+",CONTACTNUM="+contactnum+" WHERE EMAIL='"+curremail+"'");
   //code for update-operation   

    }   
    
    public void updateStaff(String curremail, String email, String name, String password, int contactnum, String position, double salary) throws SQLException { 
        st.executeUpdate("UPDATE IOTUSER.STAFF SET EMAIL='"+email+"',NAME='"+name+"',PASSWORD='"+password+"',CONTACTNUM="+contactnum+",POSITION='"+position+"',SALARY="+salary+" WHERE EMAIL='"+curremail+"'");
   //code for update-operation   

    }       

//delete a user from the database   
    public void deleteCustomer(String email) throws SQLException{ 
        st.executeUpdate("DELETE FROM IOTUSER.CUSTOMER WHERE EMAIL='"+email+"'");
   //code for delete-operation   

    }
    
    public void deleteStaff(String email) throws SQLException{ 
        st.executeUpdate("DELETE FROM IOTUSER.STAFF WHERE EMAIL='"+email+"'");
   //code for delete-operation   

    }
    
    public ArrayList<AccessLog>  listAccessLogs(String email) throws SQLException
    {
        ArrayList<AccessLog> listLogs = new ArrayList<>();
        String sql ="SELECT * FROM IOTUSER.ACCESSLOG WHERE EMAIL ='"+ email +"'";
        ResultSet rs = st.executeQuery(sql);
        
        
        while(rs.next())
        {
            String userEmail = rs.getString(3);
            if(userEmail.equals(email) ){
            
                String accessType = rs.getString(1);
                String time = rs.getString(2);
                String accountType = rs.getString(4);
                AccessLog accessLog = new AccessLog(accessType,time,userEmail,accountType);
                listLogs.add(accessLog);
            }
            
        }
        
        return listLogs;
    }
    
    public ArrayList<AccessLog> findLogsByTime(String email, String timeStamp) throws SQLException
    {
        ArrayList<AccessLog> listLogs = new ArrayList<>();
        String sql ="SELECT * FROM IOTUSER.ACCESSLOG WHERE TIME LIKE '"+ timeStamp +"%'";
        ResultSet rs = st.executeQuery(sql);
        
        
        while(rs.next())
        {
            String userEmail = rs.getString(3);
            if(userEmail.equals(email) ){
            
                String accessType = rs.getString(1);
                String time = rs.getString(2);
                String accountType = rs.getString(4);
                AccessLog accessLog = new AccessLog(accessType,time,userEmail,accountType);
                listLogs.add(accessLog);
            }
            
        }
        
        return listLogs;
    }
    
    //Find user by email and password in the database   
    public Shipment findShipment(int shipid, String shipdate) throws SQLException {       
        //setup the select sql query string  
        //execute this query using the statement field 
        String fetch = "SELECT * FROM IOTUSER.SHIPMENTS WHERE SHIPMENTID ="+ shipid +"AND SHIPDATE='"+ shipdate +"'";
        //add the results to a ResultSet     
        ResultSet rs = st.executeQuery(fetch);       
        //add the results to a ResultSet       
        //search the ResultSet for a user using the parameters   
        while(rs.next()) {
            int shipID = Integer.parseInt(rs.getString(1));
            String shipDate = rs.getString(8);
            if(shipID == shipid && shipDate.equals(shipdate)){
                String shipName = rs.getString(2);
                int shipNum = Integer.parseInt(rs.getString(3));
                String shipAdd = rs.getString(4);
                int shipPost = Integer.parseInt(rs.getString(5));
                String shipCour = rs.getString(6);
                String shipStat = rs.getString(7);
                int shipOrderID = Integer.parseInt(rs.getString(9));
                return new Shipment(shipID,shipName,shipNum,shipAdd,shipPost,shipCour,shipStat,shipDate,shipOrderID);
            }
        }            
        return null;   
    }
    
    //Add a user-data into the database   
    public void addShipment(int shipid, String shipname, int shipnum, String shipadd, int shippost, String shipcour, String shipstat, String shipdate, int orderid) throws SQLException {                   //code for add-operation       
        st.executeUpdate("INSERT INTO IOTUSER.SHIPMENTS " + " VALUES ("+ shipid +",'"+ shipname +"',"+ shipnum +",'"+ shipadd +"',"+ shippost +",'"+ shipcour +"','"+ shipstat +"','"+ shipdate +"',"+ orderid +")");   

    }

//update a user details in the database   
    public void updateShipment(int shipid, String shipname, int shipnum, String shipadd, int shippost, String shipcour, String shipstat, String shipdate, int orderid) throws SQLException { 
        st.executeUpdate("UPDATE IOTDUSER.SHIPMENTS SET SHIPNAME='"+shipname+"',SHIPNUMBER="+shipnum+",SHIPADDRESS='"+shipadd+"',SHIPPOSTCODE="+shippost+",COURIERSERVICE='"+shipcour+"',SHIPSTATUS='"+shipstat+"',SHIPDATE='"+shipdate+"',ORDERID="+orderid+" WHERE SHIPMENTID="+shipid+"");
   //code for update-operation   

    }       

//delete a user from the database   
    public void deleteShipment(int shipid) throws SQLException{ 
        st.executeUpdate("DELETE FROM IOTDUSER.SHIPMENTS WHERE SHIPMENTID="+shipid+"");
   //code for delete-operation   

    }
    
         //Find Orders
    public Order findOrder(String orderid, String orderdate) throws SQLException {       
        //setup the select sql query string  
        //execute this query using the statement field 
        String fetch = "SELECT * FROM IOTUSER.ORDERS WHERE ORDERID ='"+ orderid +"'AND ORDERDATE='"+ orderdate +"'";
        //add the results to a ResultSet     
        ResultSet rs = st.executeQuery(fetch);       
        //add the results to a ResultSet       
        //search the ResultSet for a user using the parameters   
        while(rs.next()) {
            String orderID = rs.getString(1);
            String orderDate = rs.getString(2);
            if(orderID.equals(orderid) && orderDate.equals(orderDate)){

                String oTime = rs.getString(3);
                String oStatus = rs.getString(4);
     
                return new Order(orderID,orderDate,oTime,oStatus);
            }
        }            
        return null;   
    }
    
       //Add a order-data into the database   
    public void addOrder(String orderid, String orderdate, String ordertime, String orderstatus) throws SQLException {                   //code for add-operation       
        st.executeUpdate("INSERT INTO IOTUSER.ORDERS " + " VALUES ('"+ orderid +"','"+ orderdate +"','"+ ordertime +"','"+ orderstatus +"','"+"')");   

    }
    
    //update a order details in the database   
    public void updateOrder(String orderid, String orderdate, String ordertime, String orderstatus) throws SQLException { 
        st.executeUpdate("UPDATE IOTUSER.ORDERS SET ORDERID='"+orderid+"',ORDERDATE='"+orderdate+"',ORDERTIME='"+ordertime+"',ORDERSTATUS='"+orderstatus+"'");
   //code for update-operation   

    }   
    
      public void deleteOrder(String orderid) throws SQLException{ 
        st.executeUpdate("DELETE FROM IOTUSER.ORDERS WHERE ORDERID='"+orderid+"'");
   //code for delete  

    }
      
      public ArrayList<Item>  listAllItems() throws SQLException
    {
        ArrayList<Item> listitem = new ArrayList<>();
        String sql ="SELECT * FROM IOTUSER.ITEM";
        ResultSet rs = st.executeQuery(sql);
        
        
        while(rs.next())
        {//int itemID, String itemname, String category, boolean instock, 
            //double price, int instockquantity, int manufactureid) throws SQLException
            int itemID = rs.getInt(1);
            String itemname = rs.getString(2);
            String category = rs.getString(3);
            boolean instock = rs.getBoolean(4);
            double price = rs.getDouble(5);
            int instockquantity=rs.getInt(6);
            int manufactureid = rs.getInt(7);
            boolean incart = rs.getBoolean(8);
            Item item = new Item(itemID,itemname,category,instock,price,instockquantity,manufactureid,incart);
            listitem.add(item);
            
        }
        
        return listitem;
    }

       public void removeFromCart(boolean incart) throws SQLException { 
        st.executeUpdate("UPDATE IOTUSER.ITEMS SET INCART='"+false+"'");

       }
       
       
          public ArrayList<OrderLine>  listOrderLineItems() throws SQLException
    {
        ArrayList<OrderLine> orderitem = new ArrayList<>();
        String sql ="SELECT * FROM IOTUSER.ORDERLINE";
        ResultSet rs = st.executeQuery(sql);
        
        
        while(rs.next())
        {//int itemID, String itemname, double itempice, boolean incart) throws SQLException
            int itemid = rs.getInt(1);
            String itemname = rs.getString(2);
            double price = rs.getDouble(3);
            boolean incart = rs.getBoolean(4);
            OrderLine orderline = new OrderLine(itemid,itemname,price,incart);
            orderitem.add(orderline);
            
        }
        
        return orderitem;
    }
          
            //Add a order-data into the database   
    public void addToCart(int itemID, String itemname, double itemprice, boolean incart) throws SQLException {                   //code for add-operation       
        st.executeUpdate("INSERT INTO IOTUSER.ORDERLINE VALUES ("+ itemID +",'"+ itemname +"',"+ itemprice +","+ incart +")");   


}
    
   public void removeFromCart(int itemID) throws SQLException {                   //code for add-operation       
        st.executeUpdate("DELETE FROM IOTUSER.ORDERLINE WHERE ITEMID="+itemID+"");


}
   
  public ArrayList<Order>  listOrderAllOrders() throws SQLException
    {
        ArrayList<Order> orderitem = new ArrayList<>();
        String sql ="SELECT * FROM IOTUSER.ORDERS";
        ResultSet rs = st.executeQuery(sql);
        
        
        while(rs.next())
        {//int itemID, String itemname, double itempice, boolean incart) throws SQLException
            String orderid = rs.getString(1);
            String orderdate = rs.getString(2);
            String ordertime = rs.getString(3);
            String orderstatus = rs.getString(4);
            Order order = new Order(orderid,orderdate,ordertime,orderstatus);
            orderitem.add(order);
            
        }
        
        return orderitem;
    }
  
     public OrderLine findCart(int itemid, String itemname) throws SQLException {       
  
        String fetch = "SELECT * FROM IOTUSER.ORDERLINE WHERE ITEMID ="+ itemid +"AND ITEMNAME='"+ itemname +"'";
        //add the results to a ResultSet     
        ResultSet rs = st.executeQuery(fetch);       
        //add the results to a ResultSet       
        //search the ResultSet for a user using the parameters   
        while(rs.next()) {
            int itemID = Integer.parseInt(rs.getString(1));
            String itemName = rs.getString(2);
            if(itemID == itemid && itemName.equals(itemname)){
                double itemprice = Double.parseDouble(rs.getString(3));
                boolean incart = Boolean.parseBoolean(rs.getString(4));
                return new OrderLine(itemID,itemName,itemprice,incart);
            }
        }            
        return null;   
    }

    
}

