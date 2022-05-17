--1.모든 컬럼(모든 데이터) 모두 복사
CREATE TABLE DEPT_DDL
AS 
SELECT * FROM DEPT;

SELECT * FROM DEPT_DDL;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BOSTON