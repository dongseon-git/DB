-- 제약 조건 삭제
--  문법)
--   ALTER TABLE 테이블 이름
--   DROP CONSTRAINT 제약조건 이름;
ALTER TABLE TABLE_NOTNULL2
DROP CONSTRAINT TNL_NM22_TEL_NN
;
--Table TABLE_NOTNULL2이(가) 변경되었습니다.

-- 삭제 후 제약조건 이름 확인
COL owner FOR A7
COL constraint_name FOR A20
COL constraint_type FOR A17
COL table_name FOR A17
SELECT
    t1.owner,
    t1.constraint_name,
    t1.constraint_type,
    t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_NOTNULL2'
;
--OWNER   CONSTRAINT_NAME      CONSTRAINT_TYPE   TABLE_NAME       
--------- -------------------- ----------------- -----------------
--SCOTT   TBL_NM2_LOGIN_ID_NN  C                 TABLE_NOTNULL2   
--SCOTT   TBL_NM2_LOGIN_PWD_NN C                 TABLE_NOTNULL2  