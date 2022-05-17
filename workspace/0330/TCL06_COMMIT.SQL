-- COMMIT : 트랜잭션을 영원히 반영

-- DEPT_TCL 테이블 확인
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
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BUSAN        
--        50 DATABASE       SEOUL 

-- 트랜잭션을 영구 반영
COMMIT;
--커밋 완료.

-- 트랜잭션을 영구 반영 되었는지 확인
SELECT * FROM dept_tcl;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BUSAN        
--        50 DATABASE       SEOUL 