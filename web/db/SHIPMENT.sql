/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  bert_
 * Created: 14/05/2020
 */

CREATE TABLE SHIPMENT (
    SHIPMENTID INT,
    RECIPIENTNAME VARCHAR (40),
    RECIPIENTCONTACTNUMBER INT,
    SHIPPINGADDRESS VARCHAR (30),
    POSTCODE INT,
    COURIERSERVICE VARCHAR (20),
    SHIPPINGSTATUS INT,
    SHIPMENTDATE DATE,
    ORDERID INT
);