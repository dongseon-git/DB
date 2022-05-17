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

-- charge_01, charge_02 데이터 삽입
INSERT INTO charge_01 VALUES('141001',1000,2,1000);
INSERT INTO charge_01 VALUES('141001',1001,2,1000);
INSERT INTO charge_01 VALUES('141001',1002,1,500);
SELECT * FROM charge_01;
--U_DATE    CUST_NO     U_TIME     CHARGE
-------- ---------- ---------- ----------
--141001       1000          2       1000
--141001       1001          2       1000
--141001       1002          1        500

INSERT INTO charge_02 VALUES('141002',1000,3,1500);
INSERT INTO charge_02 VALUES('141002',1001,4,2000);
INSERT INTO charge_02 VALUES('141002',1003,1,500);
SELECT * FROM charge_02;
--U_DATE    CUST_NO     U_TIME     CHARGE
-------- ---------- ---------- ----------
--141002       1000          3       1500
--141002       1001          4       2000
--141002       1003          1        500

--확정
COMMIT;

