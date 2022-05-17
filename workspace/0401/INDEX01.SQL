--다양한 인덱스 활용
--    -인덱스를 활용하여 정렬한 효과를 내는 방법
--    STEP. 1 사원테이블을 참조해 테이블 생성
--    STEP. 2 name컬럼에 인덱스 생성
--    STEP. 3 인덱스를 사용하지 않는 상태로 조회
--    STEP. 4 인덱스를 사용해 조회

-- STEP. 1 사원테이블을 참조해 테이블 생성
CREATE TABLE new_emp4 (
    no   NUMBER,
    name VARCHAR2(10),
    sal  NUMBER
);
--Table NEW_EMP4이(가) 생성되었습니다.

INSERT INTO new_emp4 VALUES( 1000, 'SMITH',  300 );
INSERT INTO new_emp4 VALUES( 1001, 'ALLEN',  250 );
INSERT INTO new_emp4 VALUES( 1002, 'KING',   430 );
INSERT INTO new_emp4 VALUES( 1003, 'BLACK',  220 );
INSERT INTO new_emp4 VALUES( 1004, 'JAMES',  620 );
INSERT INTO new_emp4 VALUES( 1005, 'MILLER', 2000);
--6 행 이(가) 삽입되었습니다.

SELECT * FROM new_emp4;
--        NO NAME              SAL
------------ ---------- ----------
--      1000 SMITH             300
--      1001 ALLEN             250
--      1002 KING              430
--      1003 BLACK             220
--      1004 JAMES             620
--      1005 MILLER           2000

-- 확정하기
COMMIT;

-- STEP. 2 name컬럼에 인덱스 생성
CREATE INDEX idx_newemp4_name
ON new_emp4 ( name ASC );
--Index IDX_NEWEMP4_NAME이(가) 생성되었습니다.

-- STEP. 3 인덱스를 사용하지 않는 상태로 조회
ALTER SESSION SET STATISTICS_LEVEL = ALL;
SELECT
    no,
    name,
    sal
FROM new_emp4
;
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));
--Plan hash value: 574968521
-- 
---------------------------------------------------------------------------------
--| Id  | Operation         | Name     | Starts | A-Rows |   A-Time   | Buffers |
---------------------------------------------------------------------------------
--|   0 | SELECT STATEMENT  |          |      1 |      6 |00:00:00.01 |       7 |
--|   1 |  TABLE ACCESS FULL| NEW_EMP4 |      1 |      6 |00:00:00.01 |       7 |
---------------------------------------------------------------------------------

-- STEP. 4 인덱스를 사용해 조회
ALTER SESSION SET STATISTICS_LEVEL = ALL;
SELECT
    no,
    name,
    sal
FROM new_emp4
WHERE name > '0'
;
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));
--Plan hash value: 392115011
-- 
-----------------------------------------------------------------------------------------------------------
--| Id  | Operation                           | Name             | Starts | A-Rows |   A-Time   | Buffers |
-----------------------------------------------------------------------------------------------------------
--|   0 | SELECT STATEMENT                    |                  |      1 |      6 |00:00:00.01 |       2 |
--|   1 |  TABLE ACCESS BY INDEX ROWID BATCHED| NEW_EMP4         |      1 |      6 |00:00:00.01 |       2 |
--|*  2 |   INDEX RANGE SCAN                  | IDX_NEWEMP4_NAME |      1 |      6 |00:00:00.01 |       1 |
-----------------------------------------------------------------------------------------------------------
-- 
--Predicate Information (identified by operation id):
-----------------------------------------------------
-- 
--   2 - access("NAME">'0')