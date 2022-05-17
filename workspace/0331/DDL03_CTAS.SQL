--3. 특정 데이터만 가져 오기
CREATE TABLE DEPT_DDL_30
AS
SELECT * FROM DEPT
WHERE DEPTNO = 30;

SELECT* FROM DEPT_DDL_30;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        30 SALES          CHICAGO 
