-- LOCK : 조작 중인 데이터를 다른 세션은 조작할 수 없도록 접근을 보류시키는 것
-- 수정 중인 데이터 접근을 막는 LOCK

-- SQL Developer와 cmd-SQLPLUS 동시에 띄워놓고 실행 (번호) 순서대로 진행
-- SQL Developer
SELECT * FROM dept_tcl; --(1)
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BUSAN

-- deptno = 30의 dname = 'DATABASE'로 변경
UPDATE dept_tcl     --(5)
   SET dname = 'DATABASE'
WHERE deptno = 30;
-- SQLPLUS에서 커밋 될때 까지 대기

-- SQLPLUS COMMIT 후 자동으로 진행
--1 행 이(가) 업데이트되었습니다.

-------------------------------------------------------------------------------
-- SQLPLUS - cmd
SELECT * FROM dept_tcl; --(2)
--  DEPTNO DNAME         LOC
---------- -----------------------
--      10 ACCOUNTING    NEW YORK
--      30 SALES         CHICAGO
--      40 OPERATIONS    BUSAN

--deptno = 30의 LOC = 'SEOUL'로 변경
UPDATE dept_tcl  -- (3)
   SET loc = 'SEOUL'
WHERE deptno = 30;
--1 행이 업데이트되었습니다.

-- 업데이트 후 테이블 확인
SELECT * FROM dept_tcl; --(4)
--    DEPTNO DNAME       LOC
------------ ----------------------
--        10 ACCOUNTING  NEW YORK
--        30 SALES       SEOUL
--        40 OPERATIONS  BUSAN

-- 확정
COMMIT;     --(6)
--커밋이 완료되었습니다.