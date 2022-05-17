--가상컬럼 (11G 버전추가)
-- GENERATED ALWAYS AS(조건) VIRTUAL; - 데이터 컬럼명을 만든 곳 뒤에 붙인다. 
-- VIRTUAL 생략은 가능하나 적어두는것이 좋다.

-- STEP 1. 가상 컬럼을 가지는 테이블 생성
-- STEP 2. 테이블에 데이터 입력(가상컬럼에 직접 데이터 입력 안됨!)
-- STEP 3. 입력된 데이터 조회
-- STEP 4. 기존값을 변경

-- STEP 1
CREATE TABLE vt1(
    col1 NUMBER,
    col2 NUMBER,
    col3 NUMBER GENERATED ALWAYS AS (COL1 + COL2)
);
--Table VT1이(가) 생성되었습니다.

-- STEP 2
--INSERT INTO vt1 VALUES (1,2,3);
--오류 보고 -
--SQL 오류: ORA-54013: INSERT 작업은 가상 열에서 허용되지 않습니다.
--54013. 0000 -  "INSERT operation disallowed on virtual columns"
--*Cause:    Attempted to insert values into a virtual column
--*Action:   Re-issue the statment without providing values for a virtual column

INSERT INTO vt1(col1,col2) VALUES (1,2);
--1 행 이(가) 삽입되었습니다.

-- STEP 3
SELECT * FROM vt1;
--      COL1       COL2       COL3
------------ ---------- ----------
--         1          2          3

-- STEP 4 : col1의 값 1 -> 5 변경
UPDATE vt1
   SET col1 = 5;
--1 행 이(가) 업데이트되었습니다.

SELECT * FROM vt1;
--      COL1       COL2       COL3
------------ ---------- ----------
--         5          2          7