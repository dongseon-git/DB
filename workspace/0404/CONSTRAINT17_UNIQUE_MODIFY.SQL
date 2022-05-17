-- 중복되지 않는 값 UNIQUE
-- 열에 저장할 데이터의 중복을 허용하지 않고자 할 때 사용합니다.
-- (단, 지정한 열에 NULL값은 여러개 존재 가능)

-- 이미 생성한 테이블에 제약 조건 지정
-- TABLE_UNIQUE2 테이블 TEL 컬럼에 UNIQUE추가
-- 문법)
--  ALTER TABLE 테이블 이름
--  MODIFY (컬럼 제약조건)

ALTER TABLE TABLE_UNIQUE2
MODIFY (tel UNIQUE);
--Table TABLE_UNIQUE2이(가) 변경되었습니다.

-- 제약조건 확인
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
WHERE t1.table_name = 'TABLE_UNIQUE2'
;
--OWNER   CONSTRAINT_NAME      CONSTRAINT_TYPE   TABLE_NAME       
--------- -------------------- ----------------- -----------------
--SCOTT   TBUNQ02_LOGINPWD_NN  C                 TABLE_UNIQUE2    
--SCOTT   TBUNQ02_LOGINID_UNQ  U                 TABLE_UNIQUE2    
--SCOTT   SYS_C008374          U                 TABLE_UNIQUE2 