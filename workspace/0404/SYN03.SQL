-- SYS

-- SYNONYM(시노님-동의어)
--  동의어는 테이블, 뷰, 시퀀스 등 객체 이름 대신 사용할 수 있는 다른 이름.
-- 1. 편의성
-- 2. 보안
--  문법)
--   CREATE [PUBLIC] SYNONYM 동의어 이름
--   FOR [사용자.] 객체이름;

-- public SYNONYM 조회 : dba_xxx에 있다.
COL synonym_name FOR A15
COL table_owner FOR A15
COL table_name FOR A15
SELECT
    t1.synonym_name,
    t1.table_owner,
    t1.table_name
FROM dba_synonyms t1
WHERE t1.table_name = 'DEPT'
;
--SYNONYM_NAME    TABLE_OWNER     TABLE_NAME     
----------------- --------------- ---------------
--D2              SCOTT           DEPT           