-- ROLLBACK : 트랙잭션을 취소

--CTAS로 DEPT_TCL table생성
CREATE TABLE dept_tcl
AS SELECT * FROM dept;
--Table DEPT_TCL이(가) 생성되었습니다.

-- 생성 후 확인
SELECT * FROM dept_tcl;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BOSTON

-- DEPT_TCL DML작업

-- 행 삽입
INSERT INTO dept_tcl VALUES (50,'DATABASE','SEOUL');
--1 행 이(가) 삽입되었습니다.

-- 행 업데이트
UPDATE dept_tcl SET loc = 'BUSAN' WHERE deptno = 40;
--1 행 이(가) 업데이트되었습니다.

-- 행 삭제
DELETE FROM dept_tcl WHERE dname = 'RESEARCH';
--1 행 이(가) 삭제되었습니다.

-- DML 작업 후 확인
SELECT * FROM dept_tcl;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        30 SALES          CHICAGO      deptno = 20 DELETE
--        40 OPERATIONS     BUSAN        UPDATE LOC 
--        50 DATABASE       SEOUL        INSERT ROW

-- 트랜잭션을 취소
ROLLBACK;
--롤백 완료.

-- 트랜잭션을 취소 후 확인
SELECT * FROM dept_tcl;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BOSTON