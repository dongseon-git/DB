-- 조건 제어문
--  IF, CASE

-- CASE 조건문
--  단순 CASE문 : 비교 기준이 되는 조건의 값이 여러 가지일 때 해당 값만 명시하여 작업 수행
--  검색 CASE문 : 특정한 비교 기준 없이 여러 조건식을 나열하여 조건식에 맞는 작업 수행

-- 검색 CASE문
-- 문법)
--  CASE 
--     WHEN 조건식1 THEN
--         수행 명령어;
--     WHEN 조건식2 THEN
--         수행 명령어;
--     ...
--     ELSE
--         수행 명령어;
--  END CASE;

SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 89;
BEGIN
    DBMS_OUTPUT.PUT_LINE('V_SCORE: ' || V_SCORE);
    CASE 
        WHEN V_SCORE >= 90 THEN DBMS_OUTPUT.PUT_LINE('A학점');
        WHEN V_SCORE >= 80 THEN DBMS_OUTPUT.PUT_LINE('B학점');
        WHEN V_SCORE >= 70 THEN DBMS_OUTPUT.PUT_LINE('C학점');
        WHEN V_SCORE >= 60 THEN DBMS_OUTPUT.PUT_LINE('D학점');
        ELSE                    DBMS_OUTPUT.PUT_LINE('F학점');
    END CASE;
END;
/
--V_SCORE: 89
--B학점
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.