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

--  LOOP-IF
-- 문법)
--  LOOP
--      반복 수행 문장;
--      IF 조건식 THEN
--          EXIT;
--      END IF;
--  END LOOP;
-- EXIT-WHEN문 대신 IF로 조건문을 완성시키고 EXIT문 사용 ( 결과값은 똑같다 )
SET SERVEROUTPUT ON;
DECLARE
    V_NUM NUMBER := 0;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('V_NUM: ' || V_NUM);
        V_NUM := V_NUM + 1;
        IF V_NUM > 11 THEN
            EXIT;
--          EXIT = ( JAVA BREAK )
        END IF;
--      EXIT WHEN V_NUM > 11;
    END LOOP;
END;
/
--V_NUM: 0
--V_NUM: 1
--V_NUM: 2
--V_NUM: 3
--V_NUM: 4
--V_NUM: 5
--V_NUM: 6
--V_NUM: 7
--V_NUM: 8
--V_NUM: 9
--V_NUM: 10
--V_NUM: 11
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.