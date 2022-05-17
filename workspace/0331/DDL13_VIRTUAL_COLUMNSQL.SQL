--가상컬럼 (11G 버전추가)
-- 조건절을 활용한 가상 컬럼 생성하기
-- GENERATED ALWAYS AS(조건) VIRTUAL; - 데이터 컬럼명을 만든 곳 뒤에 붙인다. 
-- VIRTUAL 생략은 가능하나 적어두는것이 좋다.

CREATE TABLE sales10(
  no NUMBER,
  pcode CHAR(4),
  pdate CHAR(8),
  pqty  NUMBER,
  pbugi NUMBER(1)
  GENERATED ALWAYS AS
  (
      CASE
          WHEN SUBSTR(pdate,5,2) IN ('01','02','03') THEN 1
          WHEN SUBSTR(pdate,5,2) IN ('04','05','06') THEN 2
          WHEN SUBSTR(pdate,5,2) IN ('07','08','09') THEN 3
          ELSE 4
      END) virtual
);
--Table SALES10이(가) 생성되었습니다.

INSERT INTO sales10 (no,pcode,pdate,pqty) VALUES(1,'100','20220331',10);
INSERT INTO sales10 (no,pcode,pdate,pqty) VALUES(2,'100','20220401',10);
--1 행 이(가) 삽입되었습니다.

SELECT * FROM sales10;
--        NO PCOD PDATE          PQTY      PBUGI
------------ ---- -------- ---------- ----------
--         1 100  20220331         10          1
--         2 100  20220401         10          2