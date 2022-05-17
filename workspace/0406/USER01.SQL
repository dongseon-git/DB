-- SYS

-- 사용자 생성
-- SYS/SYSTEM 관리자 계정으로 생성
--  문법)
--   CREATE USER 사용자 이름(필수)
--   IDENTIFIED BY 비번(필수)
--   DEFAULT TABLESPACE 이름(선택)
--   TEMPORARY TABLESPACE 이름(선택)
-- 이 밑으로는 잘  사용하지 않음.
--   QUOTA 테이블 스페이스 크기 ON 테이블 스페이스 이름(선택)
--   PROFILE 프로파일 이름(선택)
--   PASSWORD EXPIRE(선택)
--   ACCOUNT [LOCK/UNLOCK](선택);

-- USER_ID : ORCLSTUDY
-- 비번  : ORACLE
CREATE USER ORCLSTUDY
IDENTIFIED BY ORACLE;
--오류 보고 -
--ORA-65096: 공통 사용자 또는 롤 이름이 부적합합니다.
--65096. 00000 -  "invalid common user or role name"

-- 12c이후 계정 생성 USER_ID 앞에 C## 을 붙힌다.
-- CREATE USER C##aaaa IDENTIFIED BY bbbb;
-- 12c이전으로 계정 생성하도록 세션변경
-- ALTER SESSION SET "_oracle_script"=true;
ALTER SESSION SET "_oracle_script"=true;
--Session이(가) 변경되었습니다.
CREATE USER ORCLSTUDY
IDENTIFIED BY ORACLE;
--User ORCLSTUDY이(가) 생성되었습니다.

-- SQLPLUS 접속 : SYS>CONN ORCLSTUDY/ORACLE
--상태: 실패 -테스트 실패: ORA-01045: 
--사용자 ORCLSTUDY는 CREATE SESSION 권한을 가지고있지 않음; 로그온이 거절되었습니다
-- ORCLSTUDY 접속 실패 (아직 권한 할당하지 않음)

-- 권한 할당
GRANT CREATE SESSION TO ORCLSTUDY;
--Grant을(를) 성공했습니다.

-- SQLPLUS 접속 : SYS>CONN ORCLSTUDY/ORACLE - 접속성공

-- SCOTT에서 USER정보 확인하기
-- [ SCOTT
SELECT * 
FROM ALL_USERS t1
WHERE t1.username = 'ORCLSTUDY';
--USERNAME, USER_ID, CREATED, COMMON, ORACLE_MAINTAINED, INHERITED, DEFAULT_COLLATION, IMPLICIT, ALL_SHARD
-------------------------------------------------------------------
--ORCLSTUDY	102	     22/04/06    YES	              Y	 NO	        USING_NLS_COMP	   NO	     NO
--
-- SCOTT ]

-- 사용자 비번 변경 : ORACLE -> ORCL
ALTER USER ORCLSTUDY
IDENTIFIED BY ORCL;
--User ORCLSTUDY이(가) 변경되었습니다.

-- SQLPLUS 접속 : SYS>CONN ORCLSTUDY/ORACLE
--요청한 작업을 수행하는 중 오류 발생:
--ORA-01017: 사용자명/비밀번호가 부적합, 로그온할 수 없습니다.
--01017. 00000 -  "invalid username/password; logon denied"

-- 사용자 계정 삭제
ALTER SESSION SET "_oracle_script"=true;
--Session이(가) 변경되었습니다.
DROP USER ORCLSTUDY CASCADE;  -- CASCADE : 사용자와 객체 모두 삭제하기
--User ORCLSTUDY이(가) 삭제되었습니다.