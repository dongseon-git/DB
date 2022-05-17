-- MERGE : 여러 테이블의 데이터를 합치는 병합을 의미한다.
-- 문법)
--  MERGE INTO TABLE1  - table1에 데이터를 UPDATE,DELETE,INSERT
--  USING TABLE2
--  ON (병합조건) - table1과 table2의 병합조건
--  WHEN MATCHED THEN
--      UPDATE SET 업데이트 내용
--      DELETE WHERE 조건
--  WHEN NOT MATCHED THEN
--      INSERT VALUES(데이터)

-- 병합 할 테이블 생성
CREATE TABLE charge_01(
    u_date VARCHAR2(6),
    cust_no NUMBER,
    U_time NUMBER,
    charge NUMBER
);
--DESC charge_01;

CREATE TABLE charge_02(
    u_date VARCHAR2(6),
    cust_no NUMBER,
    U_time NUMBER,
    charge NUMBER
);

CREATE TABLE ch_total(
    u_date VARCHAR2(6),
    cust_no NUMBER,
    U_time NUMBER,
    charge NUMBER
);