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

--병합시 2회 수행시 오류가 나오는 이유는
-- ch01.u_date 값이 동일하기 때문에 오류 발생 total값과 동일하기에 UPDATE진행

-- charge_01,ch_total 병합
MERGE INTO ch_total total
USING charge_01 ch01
ON (total.u_date = ch01.u_date)
WHEN MATCHED THEN
    UPDATE SET total.cust_no = ch01.cust_no
WHEN NOT MATCHED THEN
    INSERT VALUES (ch01.u_date,ch01.cust_no,ch01.u_time,ch01.charge);
    
SELECT * FROM ch_total;

-- charge_02,ch_total 병합
MERGE INTO ch_total total
USING charge_02 ch02
ON (total.u_date = ch02.u_date)
WHEN MATCHED THEN
    UPDATE SET total.cust_no = ch02.cust_no
WHEN NOT MATCHED THEN
    INSERT VALUES (ch02.u_date,ch02.cust_no,ch02.u_time,ch02.charge);
    
SELECT * FROM ch_total;