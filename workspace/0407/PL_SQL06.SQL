-- PL SQL
-- DECLARE(선언부) : 변수, 상수, 커서 등 (선택)
-- BEGIN(실행부)   : 조건, 반복, SELECT, DML, 함수 (필수)
-- EXCEPTION(예외처리부) : PL/SQL 실행 중 발생하는 예외처리 (선택)
-- 문법)
--    DECLARE : [실행에 필요한 여러 요소 선언];
--    BEGIN : [작업을 위해 실제 실행하는 명령어];
--    EXCEPTION : [PL/SQL수행 도중 발생하는 오류 처리];
--    END;
--    /
-- 주석
-- 한줄주석 : --
-- 여러줄 주석 : /* */

-- Hello, world 출력
-- 실행 결과를 화면에 출력
SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello, world');
END;
/
--Hello, world
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.