-- 테이블에서 가상 컬럼 내역을 조회
SELECT
    column_name,
    data_type,
    data_default -- 수식이 들어가 있음
FROM user_tab_columns
WHERE table_name = 'VT1'
ORDER BY column_id;
--COLUMN_NAME   DATA_TYPE  DATA_DEFAULT  
--------------- ---------- --------------
--COL1          NUMBER                   
--COL2          NUMBER                   
--COL3          NUMBER     "COL1"+"COL2"