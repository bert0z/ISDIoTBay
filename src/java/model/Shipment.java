/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
/**
 *
 * @author bert_
 */
public class Shipment implements Serializable{
    private int shipid;
    private String shipname;
    private int shipnum;
    private String shipadd;
    private int shippost;
    private String shipcour;
    private String shipstat;
    private String shipdate;
    private int orderid;

    public Shipment(int shipid, String shipname, int shipnum, String shipadd, int shippost, String shipcour, String shipstat, String shipdate, int orderid) {
        this.shipid = shipid;
        this.shipname = shipname;
        this.shipnum = shipnum;
        this.shipadd = shipadd;
        this.shippost = shippost;
        this.shipcour = shipcour;
        this.shipstat = shipstat;
        this.shipdate = shipdate;
        this.orderid = orderid;
    }

    public int getShipid() {
        return shipid;
    }

    public void setShipid(int shipid) {
        this.shipid = shipid;
    }

    public String getShipname() {
        return shipname;
    }

    public void setShipname(String shipname) {
        this.shipname = shipname;
    }

    public int getShipnum() {
        return shipnum;
    }

    public void setShipnum(int shipnum) {
        this.shipnum = shipnum;
    }

    public String getShipadd() {
        return shipadd;
    }

    public void setShipadd(String shipadd) {
        this.shipadd = shipadd;
    }

    public int getShippost() {
        return shippost;
    }

    public void setShippost(int shippost) {
        this.shippost = shippost;
    }

    public String getShipcour() {
        return shipcour;
    }

    public void setShipcour(String shipcour) {
        this.shipcour = shipcour;
    }

    public String getShipstat() {
        return shipstat;
    }

    public void setShipstat(String shipstat) {
        this.shipstat = shipstat;
    }

    public String getShipdate() {
        return shipdate;
    }

    public void setShipdate(String shipdate) {
        this.shipdate = shipdate;
    }

    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }
    
}
