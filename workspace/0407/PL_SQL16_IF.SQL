-- 조건 제어문
--  IF, CASE

-- IF 조건문
--  IF - THEN           자바 if문
--  IF - THEN - ELSE    if ~ else
--  IF - THEN - ELSIF  if ~ else if

-- IF-THEN-ELSIF ( JAVA - if ~ else if )
-- 문법)
--  IF 조건식 THEN
--      수행할 명령어;
--  ELSIF 조건식 THEN
--      수행할 명령어;
--  ELSIF 조건식 THEN
--      수행할 명령어;
--  ...
--  ELSE
--      수행할 명령어;
--  END IF;

SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 88;
BEGIN
    DBMS_OUTPUT.PUT_LINE('V_SCORE: ' || V_SCORE);
    
    IF V_SCORE >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('V_SCORE: ' || 'A');
    ELSIF V_SCORE >=80 THEN
        DBMS_OUTPUT.PUT_LINE('V_SCORE: ' || 'B');
    ELSIF V_SCORE >=70 THEN
        DBMS_OUTPUT.PUT_LINE('V_SCORE: ' || 'C');
    ELSIF V_SCORE >=60 THEN
        DBMS_OUTPUT.PUT_LINE('V_SCORE: ' || 'D');
    ELSE
        DBMS_OUTPUT.PUT_LINE('V_SCORE: ' || 'F');
    END IF;
END;
/
--V_SCORE: 88
--V_SCORE: B
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.