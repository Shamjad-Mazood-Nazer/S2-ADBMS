use bank;
select D1.cname, d1.bname, c1.cname, c1.city, b1.city, b1.bname from deposit d1, customer c1, branch b1 where c1.city ="BOMBAY" and b1.city ="NAGPUR" and d1.cname = c1.cname and d1.bname = b1.bname;
select distinct(customer.cname), branch.city from branch, customer where branch.city = customer.city;
SELECT C1.CNAME FROM CUSTOMER C1, DEPOSIT D1, BORROW B1 WHERE C1.CITY = 'NAGPUR' AND C1.CNAME = D1.CNAME AND D1.CNAME = B1.CNAME;
SELECT D1.CNAME, D1.AMOUNT, B1.CNAME, B1.AMOUNT FROM DEPOSIT D1, BORROW B1 WHERE B1.CNAME = D1.CNAME AND B1.AMOUNT > 2000 AND D1.AMOUNT > 1000;
SELECT D1.CNAME FROM DEPOSIT D1 WHERE D1.BNAME IN (SELECT D2.BNAME FROM DEPOSIT D2 WHERE D2.CNAME="SUNIL");
SELECT B1.CNAME, B1.AMOUNT FROM BORROW B1 WHERE B1.AMOUNT > ALL(SELECT B2.AMOUNT FROM BORROW B2 WHERE B2.CNAME="PRAMOD");
SELECT C.CNAME FROM CUSTOMER C WHERE C.CITY IN (SELECT B.CITY FROM BRANCH B WHERE B.BNAME IN (SELECT D.BNAME FROM DEPOSIT D WHERE D.CNAME='SUNIL'));
SELECT B1.CITY , C1.CITY FROM BRANCH B1,CUSTOMER C1, DEPOSIT D1 WHERE C1.CNAME = 'PRAMOD' AND C1.CNAME = D1.CNAME AND D1.BNAME = B1.BNAME;
SELECT B1.CITY FROM DEPOSIT D1, BRANCH B1 WHERE D1.BNAME = B1.BNAME AND D1.CNAME IN ('SUNIL' ,'ANIL');
SELECT C1.CNAME, C1.CITY FROM CUSTOMER C1 WHERE C1.CNAME = 'ANIL' OR C1.CNAME = 'SUNIL';
