-- 변수와 상수
--  변수 : 선언부(DECLARE)에서 작성한다.

-- 변수 선언과 사용
--  변수이름 자료형 := 값 또는 표현식;

-- 상수 선언과 사용
--  변수이름 CONSTANT 자료형 := 값 또는 표현식;

SET SERVEROUTPUT ON;
DECLARE
    V_TAX CONSTANT NUMBER(1) := 3;
BEGIN
--    V_TAX := 9;
--    오류 보고 -
--ORA-06550: 줄 4, 열5:PLS-00363: 'V_TAX' 식은 피할당자로 사용될 수 없습니다
    DBMS_OUTPUT.PUT_LINE('V_TAX: ' || V_TAX);
END;
/