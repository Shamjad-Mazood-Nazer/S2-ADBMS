use bank_lab_cycle_2;
SELECT SUM(AMOUNT) FROM borrow;
SELECT SUM(AMOUNT) FROM deposit;
SELECT SUM(AMOUNT) FROM borrow WHERE BNAME="AJNI";
SELECT SUM(AMOUNT) FROM deposit WHERE ADATE>'1996-01-01';
SELECT SUM(D1.AMOUNT) FROM deposit D1, customer C1 WHERE C1.CITY="NAGPUR" AND C1.CNAME=D1.CNAME;
SELECT MAX(D1.AMOUNT) FROM deposit D1, customer C1 WHERE C1.CITY="BOMBAY" AND C1.CNAME=D1.CNAME;
SELECT SUM(D1.AMOUNT) FROM deposit D1, customer C1 WHERE C1.CITY="BOMBAY" AND C1.CNAME=D1.CNAME;
SELECT COUNT(DISTINCT(CITY)) FROM branch;
SELECT COUNT(DISTINCT(CITY)) FROM customer;
SELECT BNAME,SUM(AMOUNT) FROM deposit GROUP BY BNAME;
SELECT C1.CNAME,SUM(D1.AMOUNT) FROM customer C1, deposit D1 WHERE D1.CNAME=C1.CNAME GROUP BY C1.CITY;
SELECT BNAME,SUM(AMOUNT) FROM borrow, customer WHERE CITY="NAGPUR" GROUP BY BNAME;
SELECT COUNT(CNAME) FROM customer;
SELECT BNAME, COUNT(*) FROM deposit,customer WHERE deposit.CNAME=customer.CNAME GROUP BY BNAME;
SELECT MAX(AMOUNT) FROM BORROW B2 WHERE BNAME="VRCE";
SELECT COUNT(D1.CNAME) FROM DEPOSIT D1, BORROW B1 WHERE B1.CNAME=D1.CNAME;