-- 객체 권한 취소
-- 문법)
--  REVOKE[객체권한/ALL PRIVILEGES]
--  ON[스키마.객체이름]
--  FROM[사용자이름/롤/PUBLIC]
--  [CASCADE CONSTRAINT / FORCE]

-- 왜 ORCLSTUDY에 INSERT는 살아있는가... 권한 취소해도 왜 INSERT가 작동하는가
REVOKE SELECT, INSERT ON TEMP FROM ORCLSTUDY;
--Revoke을(를) 성공했습니다.