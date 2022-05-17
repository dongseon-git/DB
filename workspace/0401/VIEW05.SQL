-- VIEW
-- 가상의 테이블 
-- 원래 테이블에는 데이터가 들어 있지만 VIEW에는 데이터가 없고
-- 테이블에 가서 데이터를 불러오는 SQL Query만 저장.
--  VIEW용도
--   1. 보안
--   2. 사용자 편의성
-- 뷰 생성 권한
-- cmd - C:\Users\rlatk>sqlplus scott/pcwk
-- SQL> conn / as SYSDBA
-- 연결되었습니다.

-- SYS계정으로 실행 [
-- VIEW 생성 권한 할당
GRANT CREATE VIEW TO scott;
--Grant을(를) 성공했습니다. 
-- ]