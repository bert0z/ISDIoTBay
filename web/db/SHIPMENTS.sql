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

INSERT INTO SHIPMENTS (SHIPMENTID, SHIPNAME, SHIPNUMBER, SHIPADDRESS, SHIPPOSTCODE, COURIERSERVICE, SHIPSTATUS, SHIPDATE, ORDERID)
VALUES (11111, 'Bert Clement', 0414728832, '4 Scott Street Fivedock', 2132, 'FedEx', 'Arrived','2020-05-20',452),
(10000, 'Jessie Jones', 0412341321, '52 Peter Street FeatherDale', 2222, 'AusPost', 'Arrived','2020-04-20',972),
(10001, 'Fred Clement', 0414664221, '8 Sinclair Street Fivedock', 2422, 'DHL', 'Arrived','2020-05-22',212),
(10011, 'Jack Sling', 0412009889, '40 Wallum Court Stanmore', 2522, 'StarTrack', 'Arrived','2020-04-18',432),
(10111, 'Peter Pie', 0411887261, '1 Village Drive Petersham', 2232, 'FedEx', 'Arrived','2020-05-10',123),
(11101, 'Steven Gerrard', 0411387261, '57 Ranworth Road Cheltenham', 2822, 'FedEx', 'Arrived','2020-04-10',142),
(11011, 'Izzie Lizzie', 0411852261, '63 Edgewater Close Ashbury', 2092, 'AusPost', 'Arrived','2020-04-15',165),
(10101, 'Peter Pie', 0402789232, '46 Grayson Street ForestHill', 2113, 'DHL', 'Arrived','2020-05-26',152),
(01010, 'Betsy Pie', 0410982123, '75 Monteagle Road EagleTown', 2130, 'DHL', 'Arrived','2020-05-22',109),
(03214, 'Louise Harper', 0417654951, '33 Mills Street Liverpool', 2131, 'StarTrack', 'Arrived','2020-05-19',199),
(00002, 'Bert Clement', 0414728832, '4 Scott Street Fivedock', 2132, 'FedEx', 'Arrived','2020-05-18',111),
(00022, 'Jessie Jones', 0412341321, '52 Peter Street FeatherDale', 2222, 'AusPost', 'Arrived','2020-04-09',222),
(00222, 'Jeffery Wang', 0414664221, '8 Sinclair Street Fivedock', 2422, 'DHL', 'Arrived','2020-05-16',333),
(02222, 'Jack Sling', 0412009889, '40 Wallum Court Stanmore', 2522, 'StarTrack', 'Arrived','2020-04-14',444),
(20000, 'Peter Pie', 0411887261, '1 Village Drive Petersham', 2232, 'FedEx', 'Arrived','2020-05-12',555),
(22000, 'Steven Gerrard', 0411387261, '57 Ranworth Road Cheltenham', 2822, 'FedEx', 'Arrived','2020-04-29',666),
(22200, 'Izzie Lizzie', 0411852261, '63 Edgewater Close Ashbury', 2092, 'AusPost', 'Arrived','2020-04-30',777),
(22220, 'Peter Pie', 0412459824, '46 Grayson Street ForestHill', 2113, 'DHL', 'Arrived','2020-05-05',888),
(20202, 'Peter Pie', 0411232145, '75 Monteagle Road EagleTown', 2130, 'DHL', 'Arrived','2020-05-11',999),
(02020, 'Peter Pie', 0417654951, '33 Mills Street Liverpool', 2131, 'StarTrack', 'Arrived','2020-05-06',101);
