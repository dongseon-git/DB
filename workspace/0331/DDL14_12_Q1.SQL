-- p324 Q1
-- 다음 열 구조를 가지는 EMP_HW테이블을 만들어보세요.
CREATE TABLE emp_hw(
    empno    NUMBER(4),
    ename    VARCHAR(10),
    job      VARCHAR(9),
    mgr      NUMBER(4),
    hiredate DATE,
    sal      NUMBER(7,2),
    comm     NUMBER(7,2),
    deptno   NUMBER(2)
);
--Table EMP_HW이(가) 생성되었습니다.
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