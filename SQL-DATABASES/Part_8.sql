#18390198_ILIOPOULOS_GEORGIOS

USE new_personnel;

#Πρώτο ερώτημα

SELECT DEPTNO ,FORMAT(AVG(SAL),0) 'ΜΕΣΟΣ ΟΡΟΣ ΜΙΣΘΟΥ' , COUNT(*)
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*)>=1;

#Δεύτερο ερώτημα

SELECT DEPTNO 'ΤΜΗΜΑ', 
FORMAT(AVG(DATEDIFF(current_date(),HIREDATE)/365),1) 'ΠΡΟΥΠΗΡΕΣΙΑ(έτη)'
FROM EMP
GROUP BY DEPTNO;

/*

ΑΠΟΤΕΛΕΣΜΑΤΑ

1)
+--------+----------------------------------+----------+
| DEPTNO | ΜΕΣΟΣ ΟΡΟΣ ΜΙΣΘΟΥ                | COUNT(*) |
+--------+----------------------------------+----------+
|     10 | 2,000                            |        3 |
|     20 | 2,000                            |        1 |
+--------+----------------------------------+----------+

2)
+------------+--------------------------------+
| ΤΜΗΜΑ      | ΠΡΟΥΠΗΡΕΣΙΑ(έτη)               |
+------------+--------------------------------+
|         10 | 24.2                           |
|         20 | 42.9                           |
+------------+--------------------------------+

*/

