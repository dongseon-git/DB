-- SYS

-- 권한 취소
--  GRANT로는 권한 부여 REVOKE명령어로는 권한을 회수
-- 문법)
--  REVOKE [권한] FROM [사용자이름/롤(Role)이름/PUBLIC]
    
--GRANT RESOURCE, CREATE SESSION, CREATE TABLE TO ORCLSTUDY;
ALTER SESSION SET "_oracle_script"=true; 
-- 책에는 11g이고 현재 18버전이기에 계정 손댈시 세션변경필수
REVOKE RESOURCE, CREATE TABLE FROM ORCLSTUDY;
--Revoke을(를) 성공했습니다.

-- [ ORCLSTUDY 계정
--
CREATE TABLE temp2(
    NO NUMBER
);
--오류 보고 - SYS 계정에서 CREATE TABLE 권한을 회수했기 때문에 테이블 생성 불가
--ORA-01031: 권한이 불충분합니다
--01031. 00000 -  "insufficient privileges"
--
-- ORCLSTUDY ]