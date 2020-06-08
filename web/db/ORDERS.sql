/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  bert_
 * Created: 08/06/2020
 */

CREATE TABLE ORDERS (
    ORDERID VARCHAR (12),
    ORDERDATE VARCHAR (60),
    ORDERTIME VARCHAR (40),
    ORDERSTATUS VARCHAR(40));

INSERT INTO ORDERS (ORDERID, ORDERDATE, ORDERTIME, ORDERSTATUS)
VALUES ('01', '01/01/2020', '10.00pm', 'Shipped'),
('02', '01/06/2020', '6.12pm', 'cancelled'),
('03', '06/06/2020', '9.12pm', 'Shipped'),
('08', '06/06/2020', '3.00pm', 'Shipped');
