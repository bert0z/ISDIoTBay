DROP TABLE ITEM;

CREATE TABLE ITEM 
(
    ITEMID INTEGER not null primary key,
    ITEMNAME VARCHAR(50) not null,
    CATEGORY VARCHAR(30)not null ,
    INSTOCK BOOLEAN not null,
    PRICE DOUBLE not null,
    INSTOCKQUANTITY INTEGER,
    MANUFACTURERID INTEGER,
    INCART BOOLEAN 
);

INSERT INTO IOTUSER.ITEM (ITEMID, ITEMNAME, CATEGORY, INSTOCK, PRICE, INSTOCKQUANTITY, MANUFACTURERID, INCART)
VALUES 
(001, 'BMP180 Barometer', 'sensors', true, 12.00, 100, 123, true),
(002, 'Moisture Sensor', 'sensors', true, 5.00, 100, 123, true),
(003, 'Moisture Sensor', 'sensors', true, 20.00, 100, 123, true),
(004, 'MQ-2 Gas Sensor', 'sensors', true, 16.00, 100, 123, true),
(005, 'PIR Motion Sensor', 'sensors', true, 22.00, 100, 123, true),
(006, 'HC-SR04 ultrasonic sensor', 'sensors', true, 40.00, 100, 123, true),
(007, 'Magnetic Switch / Reed Relay', 'sensors', true, 18.00, 100, 123, true),
(008, 'RFID-RC522–Inductive card reader', 'sensors', true, 30.00, 100, 123, true),
(009, 'GPS NEO-6M Module', 'sensors', true, 23.00, 100, 123, true),
(010, 'USB GPS Receiver', 'sensors', true, 25.00, 100, 123, true),
(011, 'MPU-6050 Gyroscope', 'sensors', true, 27.00, 100, 123, true),
(012, 'HMC5883L / GY-271 Compass', 'sensors', true, 8.00, 100, 123, true),
(013, '433 MHz Set', 'sensors', true, 32.00, 100, 123, true),
(014, '2.4 GHz NRF24L01+ Module', 'sensors', true, 42.00, 100, 123, true),
(015, 'Radio controlled outlets / Power sockets', 'sensors', true, 40.00, 100, 123, true),
(016, 'Si4703 Radio receiver', 'sensors', true, 55.00, 100, 123, true),
(017, 'Bluetooth Adapter', 'sensors', true, 12.00, 100, 123, true),
(018, 'Infrared diodes', 'sensors', true, 3.00, 100, 123, true),
(019, 'Laser Module', 'sensors', true, 25.00, 100, 123, true),
(020, '28BYJ-48 Stepper Motor', 'sensors', true, 18.00, 100, 123, true);
