#TOPERSONNELDATABASE GIA THN 6
DROP DATABASE IF EXISTS new_personnel;
CREATE DATABASE new_personnel;
USE new_personnel;

#Δημιουργία πινάκων

CREATE TABLE DEPT(DEPTNO INT(2) NOT NULL,DNAME VARCHAR(14),
LOC VARCHAR(14),PRIMARY KEY(DEPTNO));

CREATE TABLE EMP(EMPNO INT(4) NOT NULL, ENAME VARCHAR(10), JOB VARCHAR(25),HIREDATE DATE, MGR INT(4), SAL FLOAT(7,2), COMM FLOAT(7,2),DEPTNO INT(2),PRIMARY KEY(EMPNO),
FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO));

CREATE TABLE PROJ(PROJNO INT(3) NOT NULL,PNAME VARCHAR(15),BUDGET FLOAT(14,4),PRIMARY KEY(PROJNO));

CREATE TABLE ASSIGN(EMPNO INT(4) NOT NULL,PROJNO INT(3) NOT NULL, ptime INT(3),PRIMARY KEY(EMPNO, PROJNO),
FOREIGN KEY(EMPNO) REFERENCES EMP(EMPNO),
FOREIGN KEY(PROJNO) REFERENCES PROJ(PROJNO));

#Εισαγωγή δεδομένων

INSERT INTO DEPT(DEPTNO,DNAME,LOC)VALUES
	(10,'ACCOUNTING','NEW YORK'),
	(20,'RESEARCH','DALLAS'),
	(30,'SALES','CHICAGO'),
	(40,'OPERATIONS','BOSTON');

INSERT INTO EMP VALUES
(10,'CODD','ANALYST','1989/01/01',15,3000,NULL,10),
(15,'ELMASRI','ANALYST','1995/05/02',15,1200,150,10),
(20,'NAVATHE','SALESMAN','1977/07/07',20,2000,NULL,20),
(30,'DATE','PROGRAMMER','2004/05/04',15,1800,200,10);


INSERT INTO PROJ VALUES
(100,'PAYROLL',100000),
(200,'PERSONNEL',200000),
(300,'SALES',150000);

INSERT INTO ASSIGN VALUES
(10,100,40),
(10,200,60),
(15,100,100),
(20,200,100),
(30,100,100);