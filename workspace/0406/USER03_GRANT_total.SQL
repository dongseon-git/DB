-- SYS

-- TABLESPACE,계정,권한 할당!
--      TEMP01.DBF
--      table,데이터 입력

-- goodman / pcwk
-- TABLESPACE 
--      goodman_ts.DBF
--      CREATE USER goodman
--      IDENTIFIED BY pcwk
--      DEFAULT TABLESPACE goodman_ts
--      TEMPORARY TABLESPACE temp;

--* TABLESPACE 정보 확인 (경로 확인)
COL tablespace_name FOR A15
COL file_name FOR A55
SELECT 
    tablespace_name,
    file_name
FROM dba_data_files;
--TABLESPACE_NAME FILE_NAME                                              
----------------- -------------------------------------------------------
--USERS           C:\APP\RLATK\PRODUCT\18.0.0\ORADATA\XE\USERS01.DBF     
--UNDOTBS1        C:\APP\RLATK\PRODUCT\18.0.0\ORADATA\XE\UNDOTBS01.DBF   
--SYSTEM          C:\APP\RLATK\PRODUCT\18.0.0\ORADATA\XE\SYSTEM01.DBF    
--SYSAUX          C:\APP\RLATK\PRODUCT\18.0.0\ORADATA\XE\SYSAUX01.DBF   

--* 테이블 스페이스 생성
CREATE TABLESPACE goodman_ts
DATAFILE 'C:\APP\RLATK\PRODUCT\18.0.0\ORADATA\XE\goodman01.DBF'
SIZE 300M AUTOEXTEND ON NEXT 30M;-- 사이즈300MB AUTOEXTEND(자동으로 증가) 30MB씩 증가
--TABLESPACE GOODMAN_TS이(가) 생성되었습니다.

--* TABLESPACE 정보 확인
COL tablespace_name FOR A15
COL file_name FOR A55
SELECT 
    tablespace_name,
    file_name
FROM dba_data_files;
--TABLESPACE_NAME FILE_NAME                                              
----------------- -------------------------------------------------------
--USERS           C:\APP\RLATK\PRODUCT\18.0.0\ORADATA\XE\USERS01.DBF     
--UNDOTBS1        C:\APP\RLATK\PRODUCT\18.0.0\ORADATA\XE\UNDOTBS01.DBF   
--SYSTEM          C:\APP\RLATK\PRODUCT\18.0.0\ORADATA\XE\SYSTEM01.DBF    
--SYSAUX          C:\APP\RLATK\PRODUCT\18.0.0\ORADATA\XE\SYSAUX01.DBF    
--GOODMAN_TS      C:\APP\RLATK\PRODUCT\18.0.0\ORADATA\XE\GOODMAN01.DBF

--* 사용자 생성
-- 12C 이전 방법으로 계정 생성 하기 위한 세션 변경
ALTER SESSION SET "_oracle_script"=true;

CREATE USER goodman
IDENTIFIED BY pcwk
DEFAULT TABLESPACE goodman_ts
TEMPORARY TABLESPACE temp;
--User GOODMAN이(가) 생성되었습니다.

--* 권한부여
--GRANT DBA TO goodman;
GRANT RESOURCE, CREATE SESSION, CREATE TABLE TO goodman;
--Grant을(를) 성공했습니다.

--* goodman 접속 : TABLE, INSERT, SELECT

-- [ goodman 계정
--
-- 테이블 생성 - SCOTT계정의 dept와는 다르다. 계정이 상이하다.
CREATE TABLE dept(
    deptno NUMBER(4) CONSTRAINT pk_dept PRIMARY KEY,
    dname VARCHAR2(30),
    loc VARCHAR2(50)
);
--Table DEPT이(가) 생성되었습니다.

-- 테이블 생성 확인
DESC dept;
--이름     널?       유형           
-------- -------- ------------ 
--DEPTNO NOT NULL NUMBER(4)    
--DNAME           VARCHAR2(30) 
--LOC             VARCHAR2(50)

INSERT INTO dept VALUES (10,'EDUCATION','SEOUL');
--오류 보고 -
--ORA-01950: 테이블스페이스 'GOODMAN_TS'에 대한 권한이 없습니다.

-- [SYS계정
-- 테이블스페이스 권한 부여
ALTER USER goodman DEFAULT TABLESPACE goodman_ts QUOTA UNLIMITED ON goodman_ts;
--User GOODMAN이(가) 변경되었습니다.
-- SYS]

INSERT INTO dept VALUES (10,'EDUCATION','SEOUL');
--1 행 이(가) 삽입되었습니다.

-- 조회
SELECT * FROM dept;
--    DEPTNO DNAME          LOC   
------------ -------------- ------
--        10 EDUCATION      SEOUL 
--
-- goodman ]