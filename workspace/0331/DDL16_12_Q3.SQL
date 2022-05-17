-- p324 Q3
-- EMP_HW테이블의 BIGO열 크기를 30으로 변경해 보세요.
ALTER TABLE emp_hw
MODIFY (bigo VARCHAR2(30));
--Table EMP_HW이(가) 변경되었습니다.

DESC emp_hw;
--이름       널? 유형           
---------- -- ------------ 
--EMPNO       NUMBER(4)    
--ENAME       VARCHAR2(10) 
--JOB         VARCHAR2(9)  
--MGR         NUMBER(4)    
--HIREDATE    DATE         
--SAL         NUMBER(7,2)  
--COMM        NUMBER(7,2)  
--DEPTNO      NUMBER(2)    
--BIGO        VARCHAR2(30)