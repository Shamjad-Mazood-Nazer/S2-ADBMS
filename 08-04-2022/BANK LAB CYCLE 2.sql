CREATE DATABASE bank_lab_cycle_2;
use bank_lab_cycle_2;
CREATE TABLE BRANCH(
BNAME varchar(20) primary key,
city varchar(30) check(city in('NAGPUR','BOMBAY','DELHI','BANGALORE')) not null
);
CREATE TABLE CUSTOMER(
CNAME varchar(15) primary key,
CITY varchar(20) NOT NULL
);
CREATE TABLE DEPOSIT(
ACTNO VARCHAR(5) PRIMARY KEY CHECK(ACTNO LIKE('D%')),
AMOUNT FLOAT(8,2) NOT NULL CHECK(AMOUNT > 0),
CNAME VARCHAR(15),
BNAME VARCHAR(20),
FOREIGN KEY(CNAME) REFERENCES CUSTOMER(CNAME),
FOREIGN KEY(BNAME) REFERENCES BRANCH(BNAME)
);
CREATE TABLE BORROW(
LOANNO VARCHAR(8) PRIMARY KEY CHECK(LOANNO LIKE('L%')),
CNAME VARCHAR(15),
BNAME VARCHAR(20),
AMOUNT FLOAT(8,2) CHECK(AMOUNT > 0) NOT NULL,
FOREIGN KEY(CNAME) REFERENCES CUSTOMER(CNAME),
FOREIGN KEY(BNAME) REFERENCES BRANCH(BNAME)
);
INSERT INTO BRANCH VALUES
('VRCE','NAGPUR'),('AJNI','NAGPUR'),('KAROLBAGH','DELHI'),
('CHANDINI','DELHI'),('DHARAMPETH','NAGPUR'),('MG ROAD','BANGALORE'),
('ANDHERI','BOMBAY'),('NEHRU PALACE','DELHI'),('POWAI','BOMBAY');
INSERT INTO CUSTOMER VALUES
('ANIL','CALCUTTA'),('SUNIL','DELHI'),('MEHUL','BARODA'),
('MANDAR','PATNA'),('MADHURI','NAGPUR'),('PRAMOD','NAGPUR'),
('SANDIP','SURAT'),('SHIVANI','BOMBAY'),('KRANTI','BOMBAY'),('NAREN','BOMBAY');
ALTER TABLE DEPOSIT ADD(ADATE DATE);
INSERT INTO DEPOSIT (`ACTNO`,`CNAME`,`BNAME`,`AMOUNT`,`ADATE`)VALUES('D100','ANIL','VRCE','1000.00','1995-03-01');
INSERT INTO DEPOSIT (`ACTNO`,`CNAME`,`BNAME`,`AMOUNT`,`ADATE`)VALUES('D101','SUNIL','AJNI','500.00','1996-12-01');
INSERT INTO DEPOSIT (`ACTNO`,`CNAME`,`BNAME`,`AMOUNT`,`ADATE`)VALUES('D102','MEHUL','KAROLBAGH','3500.00','1995-11-17');
INSERT INTO DEPOSIT (`ACTNO`,`CNAME`,`BNAME`,`AMOUNT`,`ADATE`)VALUES('D104','MADHURI','DHARAMPETH','1200.00','1995-12-17');
INSERT INTO DEPOSIT (`ACTNO`,`CNAME`,`BNAME`,`AMOUNT`,`ADATE`)VALUES('D105','PRAMOD','MG ROAD','3000.00','1996-03-27');
INSERT INTO DEPOSIT (`ACTNO`,`CNAME`,`BNAME`,`AMOUNT`,`ADATE`)VALUES('D106','SANDIP','ANDHERI','2000.00','1996-03-31');
INSERT INTO DEPOSIT (`ACTNO`,`CNAME`,`BNAME`,`AMOUNT`,`ADATE`)VALUES('D107','SHIVANI','ANDHERI','1000.00','1995-09-05');
INSERT INTO DEPOSIT (`ACTNO`,`CNAME`,`BNAME`,`AMOUNT`,`ADATE`)VALUES('D108','KRANTI','NEHRU PALACE','5000.00','1995-07-02');
INSERT INTO DEPOSIT (`ACTNO`,`CNAME`,`BNAME`,`AMOUNT`,`ADATE`)VALUES('D109','NAREN','POWAI','7000.00','1995-08-10');
INSERT INTO BORROW VALUES('L201','ANIL','VRCE','1000.00');
INSERT INTO BORROW VALUES('L205','MEHUL','AJNI','5000.00');
INSERT INTO BORROW VALUES('L311','SUNIL','AJNI','3000.00');
INSERT INTO BORROW VALUES('L321','MADHURI','ANDHERI','2000.00');
INSERT INTO BORROW VALUES('L371','PRAMOD','MG ROAD','8000.00');
INSERT INTO BORROW VALUES('L481','KRANTI','NEHRU PALACE','3000.00');
SELECT * FROM BRANCH;
SELECT * FROM CUSTOMER;
SELECT * FROM DEPOSIT;
SELECT * FROM BORROW;
SELECT ACTNO, AMOUNT FROM DEPOSIT;
SELECT CNAME, ACTNO FROM DEPOSIT;
SELECT CNAME FROM CUSTOMER;
SELECT BNAME FROM BRANCH;
SELECT CNAME FROM BORROW;
SELECT CNAME FROM CUSTOMER WHERE CITY = 'NAGPUR';
SELECT CNAME FROM DEPOSIT WHERE AMOUNT>4000;
SELECT CNAME, ADATE FROM DEPOSIT WHERE CNAME='ANIL';
SELECT BNAME FROM BRANCH WHERE CITY="BOMBAY";
SELECT CNAME FROM BORROW WHERE LOANNO = "L205";
SELECT CNAME FROM DEPOSIT WHERE BNAME='VRCE';
SELECT BNAME FROM BRANCH WHERE CITY="DELHI";
SELECT CNAME FROM DEPOSIT WHERE ADATE  = '1996-12-01';
SELECT ACTNO, AMOUNT FROM DEPOSIT WHERE ADATE BETWEEN '1996-05-01' AND '1996-12-01';
SELECT CITY FROM BRANCH WHERE BNAME = "KAROLBAGH";
SELECT * FROM CUSTOMER JOIN BORROW ON CUSTOMER.CNAME=BORROW.CNAME JOIN DEPOSIT ON DEPOSIT.CNAME=BORROW.CNAME WHERE CUSTOMER.CNAME = 'ANIL';