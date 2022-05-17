--2. 특정 컬럼만 복사
CREATE TABLE DEPT3
AS
SELECT DEPTNO,DNAME
FROM DEPT;

SELECT* FROM DEPT3;
--    DEPTNO DNAME         
------------ --------------
--        10 ACCOUNTING    
--        20 RESEARCH      
--        30 SALES         
--        40 OPERATIONS    
