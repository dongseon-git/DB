-- SCOTT 

-- p416 Q3
-- SCOTT계정으로 접속하여 PREV_HW계정에 SALGRADE 테이블의 SELECT 권한을 취소하는 SQL문을
-- 작성하세요. 권한의 변경이 완료되면 다음과 같이 PREV_HW계정으로 SALGRADE테이블의
-- 조치 여부를 확인해봅시다.

-- 객체 권한 취소
-- 문법)
--  REVOKE[객체권한/ALL PRIVILEGES]
--  ON[스키마.객체이름]
--  FROM[사용자이름/롤/PUBLIC]
--  [CASCADE CONSTRAINT / FORCE]

REVOKE SELECT ON SALGRADE FROM PREV_HW;
--Revoke을(를) 성공했습니다.

-- [ PREV_HW 계정
--
--권한이 취소된 SCOTT계정의 SALGRADE 테이블 조회
SELECT * FROM SCOTT.SALGRADE;