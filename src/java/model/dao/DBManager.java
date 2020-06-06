/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import model.User;
import model.Shipment;
import model.Order;
import java.sql.*;
import java.util.ArrayList;
import model.Item;
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
    public User findUser(String email, String password) throws SQLException {       
        //setup the select sql query string  
        //execute this query using the statement field 
        String fetch = "SELECT * FROM IOTBAY.USERS WHERE EMAIL ='"+ email +"'AND PASSWORD='"+ password +"'";
        //add the results to a ResultSet     
        ResultSet rs = st.executeQuery(fetch);       
        //add the results to a ResultSet       
        //search the ResultSet for a user using the parameters   
        while(rs.next()) {
            String userEmail = rs.getString(1);
            String userPass = rs.getString(3);
            if(userEmail.equals(email) && userPass.equals(password)){
                String userName = rs.getString(2);
                String userGen = rs.getString(4);
                String userFC = rs.getString(5);
                return new User(userEmail,userName,userPass,userGen,userFC);
            }
        }            
        return null;   
    }

//Add a user-data into the database   
    public void addUser(String email, String name, String password, String gender, String favcol) throws SQLException {                   //code for add-operation       
        st.executeUpdate("INSERT INTO IOTBAY.USERS " + "VALUES ('"+ email +"','"+ name +"','"+ password +"','"+ gender +"','"+ favcol +"')");   

    }

//update a user details in the database   
    public void updateUser( String email, String name, String password, String gender, String favcol) throws SQLException { 
        st.executeUpdate("UPDATE IOTBAY.USERS SET NAME='"+name+"',PASSWORD='"+password+"',GENDER='"+gender+"',FAVOURITECOLOUR='"+favcol+"' WHERE EMAIL='"+email+"'");
   //code for update-operation   

    }       

//delete a user from the database   
    public void deleteUser(String email) throws SQLException{ 
        st.executeUpdate("DELETE FROM IOTBAY.USERS WHERE EMAIL='"+email+"'");
   //code for delete-operation   

    }

    //Find user by email and password in the database   
    public Shipment findShipment(String shipid, String shipdate) throws SQLException {       
        //setup the select sql query string  
        //execute this query using the statement field 
        String fetch = "SELECT * FROM IOTBAY.SHIPMENTS WHERE SHIPMENTID ='"+ shipid +"'AND SHIPDATE='"+ shipdate +"'";
        //add the results to a ResultSet     
        ResultSet rs = st.executeQuery(fetch);       
        //add the results to a ResultSet       
        //search the ResultSet for a user using the parameters   
        while(rs.next()) {
            String shipID = rs.getString(1);
            String shipDate = rs.getString(8);
            if(shipID.equals(shipid) && shipDate.equals(shipdate)){
                String shipName = rs.getString(2);
                String shipNum = rs.getString(3);
                String shipAdd = rs.getString(4);
                String shipPost = rs.getString(5);
                String shipCour = rs.getString(6);
                String shipStat = rs.getString(7);
                String shipOrderID = rs.getString(9);
                return new Shipment(shipID,shipName,shipNum,shipAdd,shipPost,shipCour,shipStat,shipDate,shipOrderID);
            }
        }            
        return null;   
    }
    
    //Add a user-data into the database   
    public void addShipment(String shipid, String shipname, String shipnum, String shipadd, String shippost, String shipcour, String shipstat, String shipdate, String orderid) throws SQLException {                   //code for add-operation       
        st.executeUpdate("INSERT INTO IOTBAY.SHIPMENTS " + " VALUES ('"+ shipid +"','"+ shipname +"','"+ shipnum +"','"+ shipadd +"','"+ shippost +"','"+ shipcour +"','"+ shipstat +"','"+ shipdate +"','"+ orderid +"')");   

    }

//update a user details in the database   
    public void updateShipment(String shipid, String shipname, String shipnum, String shipadd, String shippost, String shipcour, String shipstat, String shipdate, String orderid) throws SQLException { 
        st.executeUpdate("UPDATE IOTBAY.SHIPMENTS SET SHIPNAME='"+shipname+"',SHIPNUMBER='"+shipnum+"',SHIPADDRESS='"+shipadd+"',SHIPPOSTCODE='"+shippost+"',COURIERSERVICE='"+shipcour+"',SHIPSTATUS='"+shipstat+"',SHIPDATE='"+shipdate+"',ORDERID='"+orderid+"' WHERE EMAIL='"+shipid+"'");
   //code for update-operation   

    }       

//delete a user from the database   
    public void deleteShipment(String shipid) throws SQLException{ 
        st.executeUpdate("DELETE FROM IOTBAY.SHIPMENTS WHERE EMAIL='"+shipid+"'");
   //code for delete-operation   

    }
    
    
      //Find user by email and password in the database   
    public Order findOrder(String orderid, String orderdate) throws SQLException {       
        //setup the select sql query string  
        //execute this query using the statement field 
        String fetch = "SELECT * FROM IOTBAY.ORDERS WHERE ORDERID ='"+ orderid +"'AND ORDERDATE='"+ orderdate +"'";
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
        st.executeUpdate("INSERT INTO IOTBAY.ORDERS " + " VALUES ('"+ orderid +"','"+ orderdate +"','"+ ordertime +"','"+ orderstatus +"','"+"')");   

    }
    
    //update a order details in the database   
    public void updateOrder(String orderid, String orderdate, String ordertime, String orderstatus) throws SQLException { 
        st.executeUpdate("UPDATE IOTBAY.ORDERS SET ORDERID='"+orderid+"',ORDERDATE='"+orderdate+"',ORDERTIME='"+ordertime+"',ORDERSTATUS='"+orderstatus+"'");
   //code for update-operation   

    }   
    
      public void deleteOrder(String orderid) throws SQLException{ 
        st.executeUpdate("DELETE FROM IOTBAY.ORDERS WHERE ORDERID='"+orderid+"'");
   //code for delete  

    }
      
      public ArrayList<Item>  listAllItems() throws SQLException
    {
        ArrayList<Item> listitem = new ArrayList<>();
        String sql ="SELECT * FROM IOTBAY.ITEM";
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
        st.executeUpdate("UPDATE IOTBAY.ITEMS SET INCART='"+false+"'");

       }
       
       
          public ArrayList<OrderLine>  listOrderLineItems() throws SQLException
    {
        ArrayList<OrderLine> orderitem = new ArrayList<>();
        String sql ="SELECT * FROM IOTBAY.ORDERLINE";
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
        st.executeUpdate("INSERT INTO IOTBAY.ORDERLINE VALUES ("+ itemID +",'"+ itemname +"',"+ itemprice +","+ incart +")");   


}
    
    
    
    
}
