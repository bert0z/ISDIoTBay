/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  bert_
 * Created: 14/05/2020
 */

CREATE TABLE INVOICE (
    INVOICEID INT,
    INVOICEDATE DATE,
    AMOUNTPAID DOUBLE,
    PAYMENTTYPE VARCHAR (10),
    COMPANYID VARCHAR (15),
    PAYMENTID INT,
    ORDERID INT
);