-- 이미 생성한 테이블에 제약조건 지정
--  TABLE_NOTNULL 테이블에 전화번호(tel)컬럼에 NOT NULL 추가
-- 문법)
--  ALTER TABLE 테이블 이름
--  MODIFY (컬럼 제약조건)

-- 제약조건 이름 지정하여 변경하기
ALTER TABLE table_notnull2
MODIFY (tel CONSTRAINT TBL_NM2_TEL_NN NOT NULL);
--Table TABLE_NOTNULL2이(가) 변경되었습니다.

-- 지정된 제약조건 이름 확인
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
--SCOTT   TBL_NM2_TEL_NN       C                 TABLE_NOTNULL2