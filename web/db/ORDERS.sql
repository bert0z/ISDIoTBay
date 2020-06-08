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
('02', '01/04/2020', '6.12pm', 'Cancelled'),
('03', '18/04/2020', '9.12pm', 'Shipped'),
('03', '25/04/2020', '3.00am', 'Shipped'),
('04', '28/04/2020', '11.26pm', 'Shipped'),
('05', '03/05/2020', '9.15pm', 'Cancelled'),
('06', '01/05/2020', '5.50pm', 'Shipped'),
('07', '03/05/2020', '3.55pm', 'Shipped'),
('08', '07/05/2020', '7.00pm', 'Shipped'),
('09', '12/05/2020', '4.40pm', 'Cancelled'),
('10', '16/05/2020', '8.20pm', 'Shipped'),
('11', '17/05/2020', '8.40pm', 'Shipped'),
('12', '23/05/2020', '6.01pm', 'Shipped'),
('13', '28/05/2020', '5.33pm', 'Shipped'),
('14', '31/05/2020', '12.40pm', 'Cancelled'),
('15', '01/06/2020', '2.12pm', 'Shipped'),
('16', '04/06/2020', '7.30pm', 'Shipped'),
('17', '08/06/2020', '9.18pm', 'Shipped'),
('18', '15/06/2020', '4.06pm', 'Cancelled'),
('19', '18/06/2020', '11.51am', 'Shipped'),
('20', '22/06/2020', '2.48am', 'Shipped');