-- 조건 제어문
--  IF, CASE

-- IF 조건문
--  IF - THEN           자바 if문
--  IF - THEN - ELSE    if ~ else
--  IF - THEN - ELSIF  if ~ else if

-- IF-THEN-ELSE ( JAVA if ~ else )
-- 문법)
--  IF 조건식 THEN
--      수행할 명령어;
--  ELSE
--      수행할 명령어;
--  END IF;

SET SERVEROUTPUT ON;
DECLARE
    V_NUMBER NUMBER := 13;
BEGIN
    IF MOD(V_NUMBER,2) = 1 THEN 
        DBMS_OUTPUT.PUT_LINE('V_NUMBER는 홀수 입니다.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('V_NUMBER는 짝수 입니다.');
    END IF;
END;
/
--V_NUMBER NUMBER := 13;
--V_NUMBER는 홀수 입니다.
--V_NUMBER NUMBER := 20;
--V_NUMBER는 짝수 입니다.
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.