/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import java.sql.*;
import java.util.*;
import java.util.logging.*;
import model.dao.DBConnector;
import model.dao.DBManager;

public class TestDB {

private static Scanner in = new Scanner(System.in);

public static void main(String[] args) {

    try {

        DBConnector connector = new DBConnector();
        Connection conn = connector.openConnection();
        DBManager db = new DBManager(conn);

 

        System.out.print("Shipment ID: ");
        String shipid = in.nextLine();
        System.out.print("Shipment Date: ");
        String shipdate = in.nextLine();
        db.findShipment(shipid,shipdate);

        System.out.println("Shipment found");

        connector.closeConnection();

 

     } catch (ClassNotFoundException | SQLException ex) {

            Logger.getLogger(TestDB.class.getName()).log(Level.SEVERE, null, ex);

        }

    }

}
