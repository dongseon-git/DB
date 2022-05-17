-- 읽기 전용 VIEW

-- VIEW02 생성
CREATE OR REPLACE VIEW view02
AS( SELECT a,b
    FROM o_table)
WITH READ ONLY;
--View VIEW02이(가) 생성되었습니다.

-- 데이터 입력
--INSERT INTO view02 VALUES (1,2);
--오류 보고 -
--SQL 오류: ORA-42399: 읽기 전용 뷰에서는 DML 작업을 수행할 수 없습니다.
--42399.0000 - "cannot perform a DML operation on a read-only view"