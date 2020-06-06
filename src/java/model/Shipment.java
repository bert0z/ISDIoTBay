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
    private String shipid;
    private String shipname;
    private String shipnum;
    private String shipadd;
    private String shippost;
    private String shipcour;
    private String shipstat;
    private String shipdate;
    private String orderid;

    public Shipment(String shipid, String shipname, String shipnum, String shipadd, String shippost, String shipcour, String shipstat, String shipdate, String orderid) {
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

    public String getShipid() {
        return shipid;
    }

    public void setShipid(String shipid) {
        this.shipid = shipid;
    }

    public String getShipname() {
        return shipname;
    }

    public void setShipname(String shipname) {
        this.shipname = shipname;
    }

    public String getShipnum() {
        return shipnum;
    }

    public void setShipnum(String shipnum) {
        this.shipnum = shipnum;
    }

    public String getShipadd() {
        return shipadd;
    }

    public void setShipadd(String shipadd) {
        this.shipadd = shipadd;
    }

    public String getShippost() {
        return shippost;
    }

    public void setShippost(String shippost) {
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

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }


    
}
