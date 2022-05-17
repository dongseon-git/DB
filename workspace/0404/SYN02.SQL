-- SYNONYM(시노님-동의어)
--  동의어는 테이블, 뷰, 시퀀스 등 객체 이름 대신 사용할 수 있는 다른 이름.
-- 1. 편의성
-- 2. 보안
--  문법)
--   CREATE [PUBLIC] SYNONYM 동의어 이름
--   FOR [사용자.] 객체이름;

--scott사용자에 emp테이블의 동의어로 e로 생성 ( private SYNONYM )
CREATE SYNONYM e FOR emp;
--Synonym E이(가) 생성되었습니다.

-- 동의어 E 를 통해서 SELECT, dml작업 가능
SELECT * FROM e;

--scott사용자에 dept테이블의 동의어로 d2로 생성 ( public SYNONYM )
CREATE PUBLIC SYNONYM d2 FOR dept;
--SYNONYM D2이(가) 생성되었습니다.

SELECT * FROM d2;

-- private SYNONYM 조회
COL synonym_name FOR A15
COL table_owner FOR A15
COL table_name FOR A15
SELECT
    t1.synonym_name,
    t1.table_owner,
    t1.table_name
FROM user_synonyms t1
WHERE t1.table_name = 'EMP'
;
--SYNONYM_NAME    TABLE_OWNER     TABLE_NAME     
----------------- --------------- ---------------
--E               SCOTT           EMP    