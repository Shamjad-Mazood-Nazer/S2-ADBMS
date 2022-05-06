use bank;
SELECT D.BNAME FROM DEPOSIT D, BRANCH B WHERE D.BNAME=B.BNAME GROUP BY D.BNAME HAVING SUM(D.AMOUNT)>5000;
select CNAME from deposit where AMOUNT = (select AVG(Amount) from DEPOSIT GROUP BY BNAME having AVG(Amount)>5000);
SELECT MAX(AMOUNT), CNAME FROM DEPOSIT;
SELECT D1.BNAME FROM DEPOSIT D1 GROUP BY D1.BNAME HAVING COUNT(D1.CNAME) >= ALL (SELECT COUNT(D2.CNAME) FROM DEPOSIT D2 GROUP BY D2.BNAME);
select count(deposit.cname)from deposit,CUSTOMER where CUSTOMER.CITY='nagpur';
SELECT CNAME FROM DEPOSIT WHERE BNAME = 'VRCE' AND AMOUNT  = (SELECT MAX(AMOUNT) FROM DEPOSIT WHERE BNAME='VRCE');
SELECT BNAME FROM DEPOSIT GROUP BY BNAME HAVING COUNT(BNAME)>5;
SELECT C.CNAME, COUNT(B.BNAME) FROM CUSTOMER C INNER JOIN BRANCH B ON C.CNAME = B.BNAME GROUP BY C.CNAME ORDER BY COUNT(B.BNAME) DESC;
SELECT COUNT(B1.BNAME) FROM DEPOSIT D1, BORROW B1, CUSTOMER C1 WHERE C1.CNAME=D1.CNAME AND D1.CNAME = B1.CNAME AND C1.CITY IN(SELECT CITY FROM CUSTOMER);