-- p287 Q1

-- 문제 진행 전 테이블 생성
--CREATE TABLE CHAP10HW_EMP      AS SELECT * FROM emp;
--CREATE TABLE CHAP10HW_DEPT     AS SELECT * FROM dept;
--CREATE TABLE CHAP10HW_SALGRADE AS SELECT * FROM SALGRADE;

-- 오른쪽과 같이 CHAP10HW_DEPT테이블에 50,60,70,80번 부서를 등록하는 SQL문 작성

-- 데이터 삽입 전 테이블 확인
SELECT * FROM chap10hw_dept;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BOSTON

-- 데이터 삽입
INSERT INTO chap10hw_dept VALUES (50,'ORACLE','BUSAN');
INSERT INTO chap10hw_dept VALUES (60,'SQL'   ,'ILSAN');
INSERT INTO chap10hw_dept VALUES (70,'SELECT','INCHEON');
INSERT INTO chap10hw_dept VALUES (80,'DML'   ,'BUNDANG');

-- 삽입 후 데이터 확인
SELECT * FROM chap10hw_dept;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BOSTON       
--        50 ORACLE         BUSAN        
--        60 SQL            ILSAN        
--        70 SELECT         INCHEON      
--        80 DML            BUNDANG

-- 확정하기
COMMIT;