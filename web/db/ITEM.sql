/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  bert_
 * Created: 13/05/2020
 */

CREATE TABLE ITEM (
    ITEMID INT,
    ITEMNAME VARCHAR (30),
    CATEGORY VARCHAR (20),
    INSTOCK BOOLEAN,
    PRICE DOUBLE,
    INSTOCKQUANTITY INT,
    MANUFACTURERID INT
);