-- SYS

-- SYNONYM(시노님-동의어)
--  동의어는 테이블, 뷰, 시퀀스 등 객체 이름 대신 사용할 수 있는 다른 이름.
-- 1. 편의성
-- 2. 보안
--  문법)
--   CREATE [PUBLIC] SYNONYM 동의어 이름
--   FOR [사용자.] 객체이름;


--PUBLIC 시노님권한(모든 사용자 사용가능 (대표적으로 dual TABLE)
GRANT CREATE PUBLIC SYNONYM TO scott;
--Grant을(를) 성공했습니다.

-- PRIVATE시노님 생성 권한(생선한 사용자만 사용가능)
GRANT CREATE SYNONYM TO scott;
--Grant을(를) 성공했습니다.