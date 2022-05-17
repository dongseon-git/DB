-- SYS

-- 권한 관리
-- 권한부여 문법)
--  GRANT 시스템권한 TO 사용자이름/롤(Role)이름/PUBLIC
--  WITH ADMIN OPTION(선택);
-- WITH ADMIN OPTION을 사용하면 부여받은 권한을 다른 사용자에게 부여할 수 있게 된다.

ALTER SESSION SET "_oracle_script"=true;
--Session이(가) 변경되었습니다.
CREATE USER ORCLSTUDY
IDENTIFIED BY ORACLE;
--User ORCLSTUDY이(가) 생성되었습니다.

-- RESOURCE : 사용자가 테이블,시퀀스를 비롯한 여러 객체를 생성할 수 있는 기본 시스템 권한을 묶어놓은 틀
-- CREATE SESSION : 오라클 접속 권한
-- CREATE TABLE : 테이블 생성 권한
-- INSERT TABLE : 테이블 데이터 삽입 권한
GRANT RESOURCE, CREATE SESSION, CREATE TABLE,INSERT ANY TABLE to ORCLSTUDY;
--Grant을(를) 성공했습니다.
ALTER USER ORCLSTUDY DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;
--User ORCLSTUDY이(가) 변경되었습니다.

-- [ORCLSTUDY 계정 
CREATE TABLE TEMP2(
    COL1 VARCHAR2(20),
    COL2 VARCHAR2(20)
);
--Table TEMP2이(가) 생성되었습니다.

-- TEMP2테이블에 데이터 입력
INSERT INTO temp2 VALUES ('USER','GRANT_TEST');
--오류 보고 -
--ORA-01950: 테이블스페이스 'USERS'에 대한 권한이 없습니다.

--[SYS 계정
ALTER USER ORCLSTUDY DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;
--User ORCLSTUDY이(가) 변경되었습니다.
-- SYS 계정 ]

INSERT INTO temp2 VALUES ('USER','GRANT_TEST');
--1 행 이(가) 삽입되었습니다.

SELECT * FROM temp2;
--COL1                 COL2                
---------------------- --------------------
--USER                 GRANT_TEST 
--
-- ORCLSTUDY 계정 ]