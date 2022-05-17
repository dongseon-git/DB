-- 세션(session) : 어떤활동을 위한 시간이나 기간
-- 오라클 데이터베이스에서 세션은 데이터베이스 접속 시작부터
-- 접속이 종료되기 까지의 전체 기간을 의미한다.
-- 현재 트랜잭션이 종료될 때까지 다른 세션에서는 데이터 조작 전 상태의 
-- 데이터만 조회할 수 있다.

-- SQL Developer와 cmd-SQLPLUS 동시에 띄워놓고 실행 (번호) 순서대로 진행
-- SQL Developer
SELECT * FROM dept_tcl; -- (4)
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BUSAN        
--        50 DATABASE       SEOUL

--SQLPLUS COMMIT 후 테이블 확인
SELECT * FROM dept_tcl; -- (6)
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BUSAN

-------------------------------------------------------------------------------
-- SQLPLUS - cmd
 SELECT * FROM dept_tcl; -- (1)
-- DEPTNO DNAME        LOC
--------- ------------ ---------
--     10 ACCOUNTING   NEW YORK
--     30 SALES        CHICAGO
--     40 OPERATIONS   BUSAN
--     50 DATABASE     SEOUL

 DELETE FROM dept_tcl WHERE deptno = 50; -- (2)
 SELECT * FROM dept_tcl; -- (3)
--    DEPTNO DNAME           LOC
------------ --------------- ---------
--        10 ACCOUNTING      NEW YORK
--        30 SALES           CHICAGO
--        40 OPERATIONS      BUSAN
COMMIT;  -- (5)
--커밋이 완료되었습니다.