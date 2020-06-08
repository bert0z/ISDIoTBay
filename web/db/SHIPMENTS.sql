/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  bert_
 * Created: 08/06/2020
 */
DROP TABLE SHIPMENTS;

CREATE TABLE SHIPMENTS (
    SHIPMENTID INT PRIMARY KEY,
    SHIPNAME VARCHAR (40),
    SHIPNUMBER INT,
    SHIPADDRESS VARCHAR (50),
    SHIPPOSTCODE INT,
    COURIERSERVICE VARCHAR (12),
    SHIPSTATUS VARCHAR (10),
    SHIPDATE VARCHAR (12),
    ORDERID INT
);