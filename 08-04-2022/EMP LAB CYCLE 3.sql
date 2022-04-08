CREATE DATABASE EMP_LAB_CYCLE_3;
USE emp_lab_cycle_3;
CREATE TABLE EMP(
EMPNO INT(4) PRIMARY KEY,
ENAME VARCHAR(10),
HIREDATE DATE,
SALARY INT,
COMMISSION INT
);
INSERT INTO EMP(EMPNO, ENAME, HIREDATE, SALARY, COMMISSION) VALUES('101', 'RAMESH', '1980-01-17', 5000, NULL);
INSERT INTO EMP(EMPNO, ENAME, HIREDATE, SALARY, COMMISSION) VALUES('102', 'AJAY', '1985-07-05', 5000, 500);
INSERT INTO EMP(EMPNO, ENAME, HIREDATE, SALARY, COMMISSION) VALUES('103', 'RAVI', '1981-08-12', 1500, NULL);
INSERT INTO EMP(EMPNO, ENAME, HIREDATE, SALARY, COMMISSION) VALUES('104', 'NIKESH', '1983-03-03', 3000, 700);
INSERT INTO EMP(EMPNO, ENAME, HIREDATE, SALARY, COMMISSION) VALUES('105', 'RAVI', '1985-07-05', 3000, NULL);
ALTER TABLE EMP ADD SAL FLOAT(7,2);
SELECT * FROM EMP;
ALTER TABLE EMP DROP SAL;
SELECT * FROM EMP;
ALTER TABLE EMP MODIFY ENAME VARCHAR(15);
RENAME table EMP to EMP1;
TRUNCATE TABLE EMP1;
DROP TABLE EMP1;
CREATE TABLE STUD(
SNAME VARCHAR(20) PRIMARY KEY,
ROLLNO INT NOT NULL,
DOB DATE NOT NULL
); 
/*INSERT INTO STUD(SNAME,ROLLNO, DOB) VALUES('JAD', '36', '2000-06-20');
INSERT INTO STUD(SNAME,ROLLNO, DOB) VALUES('NAD', '11', '2000-06-20');
INSERT INTO STUD(SNAME,ROLLNO, DOB) VALUES('SHEFANY', '37', '2000-01-18');
DROP TABLE STUD;*/
CREATE TABLE STUDENT(
ROLLNO INT,
MARK INT CHECK(MARK>=0 AND MARK<=100)
);
CREATE TABLE CUST(
CUSTID INT PRIMARY KEY,
NAME VARCHAR(10)
); 