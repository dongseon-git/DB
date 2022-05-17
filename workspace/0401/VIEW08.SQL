-- View를 통한 데이터 변경하기

-- 테이블 생성
CREATE TABLE o_table(
    a NUMBER,
    b NUMBER
);
--Table O_TABLE이(가) 생성되었습니다.

-- VIEW생성
CREATE OR REPLACE VIEW view01
AS ( SELECT a, b
     FROM o_table
);
--View VIEW01이(가) 생성되었습니다.

-- VIEW를 통한 입력
INSERT INTO view01 VALUES (1,2);
--1 행 이(가) 삽입되었습니다.

-- o_table 조회
SELECT *
FROM o_table;
--         A          B
------------ ----------
--         1          2