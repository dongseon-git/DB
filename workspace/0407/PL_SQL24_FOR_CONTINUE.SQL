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
-- 문법)
--  FOR i IN 시작 값 .. 종료 값 LOOP
--    CONTINUE WHEN 조건식; (ex) MOD(i,2) = 1; i를2로 나눈 나머지값이 1인경우 넘어가라
--    반복 수행 문장;
--  END LOOP;

-- 짝수 일때 만 출력 : 1~ 10 사이 
SET SERVEROUTPUT ON;
DECLARE
    
BEGIN
    FOR i IN 1..10 LOOP
    --  i를 2로 나눈 나머지값이 1이면 CONTINUE(넘어감)
        CONTINUE WHEN MOD(i,2) = 1;
        DBMS_OUTPUT.PUT_LINE('i: ' || i);
    END LOOP;
END;
/
--i: 2
--i: 4
--i: 6
--i: 8
--i: 10
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.