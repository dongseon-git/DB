-- WITH절을 활용한 SUB QUERY
-- WITH절을 사용하여 원하는 테이블을 메모리에 미리 뷰처럼 가상의 테이블로 생성시킨 후
-- 데이터를 가져오는 기법이다.

-- 문법)
-- WITH 별칭 1 AS (SELECT문 1),
--      별칭 2 AS (SELECT문 2),
--      별칭 n AS (SELECT문 n)
-- SELECT
-- FROM 별칭1,별칭2,별칭3;

-- WITH절 안에는 SELECT문장만 쓸 수 있다.
-- WITH절 안에는 또 다른 WITH절을 쓸 수 없다.
-- (ORACLE 9I버전 부터 가능)

-- TEST 1. 대용량의 테이블을 생성한 후 최대값과 최소값의 차이 구하기

-- STEP 1. 실습 전에 필요한 파일의 용량을 증가합니다.
-- SCOTT계정으로 with_test1 테이블 생성 후 데이터 500만건 입력
--CREATE TABLE with_test1(
-- no NUMBER,
-- name VARCHAR2(10),
-- pay NUMBER(6)
--)
--TABLESPACE USERS; --Tablespace : 데이터베이스 오브젝트 내 실제 데이터를 저장하는 공간
--
--desc with_test1;
--이름   널? 유형           
------  -- ------------ 
--NO       NUMBER       
--NAME     VARCHAR2(10) 
--PAY      NUMBER(6) 

-- 500만건 입력
--BEGIN
--    FOR i IN 1..5000000 LOOP
--        INSERT INTO with_test1 VALUES (i,
--                                       DBMS_RANDOM.STRING('A',5),--대소문자 구문 없이 알파벳 5자리 랜덤
--                                       DBMS_RANDOM.VALUE(6,999999)); --숫자 6자리 랜덤
--    END LOOP;
--    COMMIT;
--END;
--/

-- 500만건 입력 건수 확인
--SELECT COUNT(*) FROM with_test1;
--  COUNT(*)
------------
--   5000000

-- STEP 2. MAX,MIN 함수를 사용하여 최대값, 최소값의 차이를 구하고 소요시간 측정.
--SELECT MAX(pay)-MIN(pay)
--FROM with_test1;
--MAX(PAY)-MIN(PAY)
-------------------
--           999993
--소요시간 (0.137초)

-- STEP 3. PAY INDEX 생성
--CREATE INDEX idx_with_pay ON with_test1(pay);
-- with_test1 테이블에 pay 컬럼에 idx_with_pay라는 INDEX를 생성

--SELECT MAX(pay)-MIN(pay)
--FROM with_test1
--WHERE pay > 0;
--MAX(PAY)-MIN(PAY)
-------------------
--           999993
--소요시간 (0.385초)

-- STEP 4. WITH절을 사용하여 동일한 작업 수행
 --ORACLE HINT : /*+ INDEX_DESC (w idx_with_pay) */ INDEX sort하기
WITH a AS (
 /*최대값*/
 SELECT /*+ INDEX_DESC (w idx_with_pay) */ pay
 FROM with_test1 w
 WHERE pay > 0
 AND ROWNUM = 1
),   b AS (
 /*최소값*/
 SELECT /*+ INDEX_ASC (w idx_with_pay) */ pay
 FROM with_test1 w
 WHERE pay > 0
 AND ROWNUM = 1)
 SELECT a.pay-b.pay
 FROM a,b;
--A.PAY-B.PAY
-------------
--     999993