-- SYS 

-- p416 Q1
-- 다음 조건을 만족하는 SQL문을 작성해보세요.
-- (1) SYSTEM계정으로 접속하여 PREV_HW계정을 생성해 보세요.
-- (2) 비밀번호는 ORCL로 지정합니다. 접속 권한을 부여하고 PREV_HW계정으로 접속이 잘 되는지 확인해보세요.

--* TABLESPACE 정보 확인
COL tablespace_name FOR A15
COL file_name FOR A55
SELECT 
    tablespace_name,
    file_name
FROM dba_data_files;
--TABLESPACE_NAME FILE_NAME                                              
----------------- -------------------------------------------------------
--SYSTEM          C:\APP\RLATK\PRODUCT\18.0.0\ORADATA\XE\SYSTEM01.DBF

--* TABLESPACE 생성
CREATE TABLESPACE prev_hw_ts
DATAFILE 'C:\APP\RLATK\PRODUCT\18.0.0\ORADATA\XE\prev_hw_ts01.DBF'
SIZE 300M AUTOEXTEND ON NEXT 30M;
--TABLESPACE PREV_HW_TS이(가) 생성되었습니다.
--TABLESPACE_NAME FILE_NAME                                              
----------------- -------------------------------------------------------
--SYSTEM          C:\APP\RLATK\PRODUCT\18.0.0\ORADATA\XE\SYSTEM01.DBF
--PREV_HW_TS	  C:\APP\RLATK\PRODUCT\18.0.0\ORADATA\XE\PREV_HW_TS01.DBF

--* 사용자 생성
--12C 이전 방법으로 계정 생성 세션 변경
ALTER SESSION SET "_oracle_script"=true;
CREATE USER prev_hw
IDENTIFIED BY ORCL
DEFAULT TABLESPACE prev_hw_ts
TEMPORARY TABLESPACE temp 
QUOTA UNLIMITED ON prev_hw_ts
;

--* 사용자 권한 부여
GRANT RESOURCE, CREATE SESSION, CREATE TABLE, DBA TO prev_hw;
--Grant을(를) 성공했습니다.

-- [ PREV_HW 계정
--
--* 사용자 계정에서 테이블 생성
CREATE TABLE dept(
  deptno NUMBER(4) CONSTRAINT PK_DEPT PRIMARY KEY,
  dname  VARCHAR2(30),
  loc    VARCHAR2(50)
);
--Table DEPT이(가) 생성되었습니다.
desc dept;
--이름     널?       유형           
-------- -------- ------------ 
--DEPTNO NOT NULL NUMBER(4)    
--DNAME           VARCHAR2(30) 
--LOC             VARCHAR2(50) 
INSERT INTO dept VALUES (10,'EDUCATION','SEOUL');
--1 행 이(가) 삽입되었습니다.

--조회
SELECT * FROM dept;
--    DEPTNO DNAME           LOC    
------------ --------------- -------
--        10 EDUCATION       SEOUL
--
--  PREV_HW ]