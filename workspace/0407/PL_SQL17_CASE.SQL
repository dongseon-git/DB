-- 조건 제어문
--  IF, CASE

-- CASE 조건문
--  단순 CASE문 : 비교 기준이 되는 조건의 값이 여러 가지일 때 해당 값만 명시하여 작업 수행
--  검색 CASE문 : 특정한 비교 기준 없이 여러 조건식을 나열하여 조건식에 맞는 작업 수행

-- 단순 CASE문
-- 문법)
--  CASE 비교기준
--     WHEN 값1 THEN
--         수행 명령어;
--     WHEN 값2 THEN
--         수행 명령어;
--     ...
--     ELSE
--         수행 명령어;
--  END CASE;

SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 89;
BEGIN
-- TRUNC문은 버림 이기에 정수만 출력(별도 소숫점 자리수를 지정하지않으면)
    DBMS_OUTPUT.PUT_LINE('TRUNC(V_SCORE/10): ' || TRUNC(V_SCORE/10));
    CASE TRUNC(V_SCORE/10)
        WHEN 10 THEN DBMS_OUTPUT.PUT_LINE('A학점');
        WHEN  9 THEN DBMS_OUTPUT.PUT_LINE('A학점');
        WHEN  8 THEN DBMS_OUTPUT.PUT_LINE('B학점');
        WHEN  7 THEN DBMS_OUTPUT.PUT_LINE('C학점');
        WHEN  6 THEN DBMS_OUTPUT.PUT_LINE('D학점');
        ELSE         DBMS_OUTPUT.PUT_LINE('F학점');
    END CASE;
END;
/
-- WHEN 10 과 9가 같은 출력값인 이유는 90~100까지를 의미함
--TRUNC(V_SCORE/10): 8
--B학점
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.