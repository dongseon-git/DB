-- static_table 데이터 입력
CREATE TABLE static_table(
    no NUMBER
);
--Table STATIC_TABLE이(가) 생성되었습니다.

-- static dictionary조회 : 데이터 입력이 반영되어 있지 않음.
BEGIN
    FOR i IN 1..1000 LOOP
        INSERT INTO static_table VALUES (i);
    END LOOP;
    COMMIT;
END;
/
--PL/SQL 프로시저가 성공적으로 완료되었습니다.
SELECT COUNT(*) FROM static_table;
--  COUNT(*)
------------
--      1000

-- 딕셔너리를 수동으로 update하면 그재서야 데이터가 보인다.
SELECT 
    t1.num_rows, --건수
    t1.blocks, -- 오라클 데이터베이스의 IO(Input Output)의 최소 단위
    t1.table_name
FROM user_tables t1
WHERE t1.table_name = 'STATIC_TABLE'
;
--  NUM_ROWS     BLOCKS TABLE_NAME   
------------ ---------- -------------
--                      STATIC_TABLE 