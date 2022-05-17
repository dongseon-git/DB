-- 중복되지 않는 값 UNIQUE
-- 열에 저장할 데이터의 중복을 허용하지 않고자 할 때 사용합니다.
-- (단, 지정한 열에 NULL값은 여러개 존재 가능)

-- UNIQUE 제약 조건 이름 직접 지정

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

--RENAME
ALTER TABLE TABLE_UNIQUE2
RENAME CONSTRAINT SYS_C008374 TO TBUNQ02_TEL_UNQ;
--Table TABLE_UNIQUE2이(가) 변경되었습니다
-- SELECT * FROM TABLE_UNIQUE2;
--OWNER   CONSTRAINT_NAME      CONSTRAINT_TYPE   TABLE_NAME       
--------- -------------------- ----------------- -----------------
--SCOTT   TBUNQ02_LOGINPWD_NN  C                 TABLE_UNIQUE2    
--SCOTT   TBUNQ02_LOGINID_UNQ  U                 TABLE_UNIQUE2    
--SCOTT   TBUNQ02_TEL_UNQ      U                 TABLE_UNIQUE2 

--MODIFY : DROP, MODIFY
ALTER TABLE TABLE_UNIQUE2
DROP CONSTRAINT TBUNQ02_TEL_UNQ;
ALTER TABLE TABLE_UNIQUE2
MODIFY ( tel CONSTRAINT TBUNQ02_TEL_UNQ99 UNIQUE);
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
--SCOTT   TBUNQ02_TEL_UNQ99    U                 TABLE_UNIQUE2