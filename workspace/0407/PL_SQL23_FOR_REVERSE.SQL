-- 반복 제어문

-- 반복문 종류 ( FOR문, WHILE문 )
--   종류               설명
----------------------------------------------------
--  기본LOOP            기본 반복문
--  WHILE LOOP         특정 조건식의 결과를 통해 반복 수행
--  FOR LOOP           반복 횟수를 알고 있는 경우 사용
--  Cusor FOR LOOP     커서를 활용한 반복문

-- 반복문 수행 중단 ( JAVA - BREAK, CONTINUE ) WHEN이 추가된경우 IF문(조건식)
--   종류               설명
------------------------------------------------------------------
--  EXIT               수행 중인 반복문 종류
--  EXIT-WHEN          반복 종료를 위한 조건식을 지정하고 만족하면 종료
--  CONTINUE           수행 중인 반복문 현재 주기를 건너뜀
--  CONTINUE WHEN      조건식을 만족하면 수행 중인 반복문 현재 주기를 건너뜀

-- FOR LOOP : 반복 횟수를 알고 있는 경우 사용
-- REVERSE 키워드를 사용하여 역순으로 반복수행 - 하지만 시작값과 종료값의 위치는 그대로
-- 문법)
--  FOR i IN REVERSE 시작 값 .. 종료 값 LOOP
--    반복 수행 문장;
--  END LOOP;

SET SERVEROUTPUT ON;
DECLARE

BEGIN
    FOR i IN REVERSE 1 .. 10 LOOP
        DBMS_OUTPUT.PUT_LINE('i: ' || i);
    END LOOP;
END;
/
--i: 10
--i: 9
--i: 8
--i: 7
--i: 6
--i: 5
--i: 4
--i: 3
--i: 2
--i: 1
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.