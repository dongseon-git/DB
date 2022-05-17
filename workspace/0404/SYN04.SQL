-- SYNONYM(시노님-동의어)
--  동의어는 테이블, 뷰, 시퀀스 등 객체 이름 대신 사용할 수 있는 다른 이름.
-- 1. 편의성
-- 2. 보안

-- 동의어 삭제
--DROP SYNONYM 시노님_이름;

-- private SYNONYM 삭제
DROP SYNONYM E;
--Synonym E이(가) 삭제되었습니다.

-- public SYNONYM 삭제
DROP PUBLIC SYNONYM D2;
--SYNONYM D2이(가) 삭제되었습니다.