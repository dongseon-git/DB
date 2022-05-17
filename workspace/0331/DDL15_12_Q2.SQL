-- p324 Q2
-- EMP_HW테이블에 BIGO열을 추가해보세요. BIGO열의 자료형은 가변형문자열이고,
-- 길이는 20입니다.
ALTER TABLE emp_hw
  ADD bigo VARCHAR2(20); -- BYTE : defualt되어있음.
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
--BIGO        VARCHAR2(20) 