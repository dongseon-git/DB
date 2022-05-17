-- 인덱스 조회하기
--USER_INDEXS, USER_IND_COLUMNS

SELECT 
    t1.table_name,
    t1.column_name,
    t1.index_name
FROM USER_IND_COLUMNS t1
WHERE t1.table_name = 'DEPT2'
;
--TABLE_NAME    COLUMN_NAME		INDEX_NAME
---------------------------------------------------
--DEPT2         DCODE           SYS_C008224      
--DEPT2         DNAME           INDEX_DEPT2_DNAME 
--DEPT2         AREA            IDX_DEPT2_AREA

-- USER_INDEXES,
SELECT
    t1.table_name,
    t1.index_name
FROM user_indexes t1
WHERE t1.table_name = 'DEPT2';
--TABLE_NAME, INDEX_NAME
----------------
--DEPT2	      SYS_C008224
--DEPT2	      INDEX_DEPT2_DNAME
--DEPT2	      IDX_DEPT2_AREA