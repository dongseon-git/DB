-- 변수의 기본값 지정하기
-- DEFAULT 키워드로 변수에 저장할 기본값을 지정합니다.
--  변수이름 자료형 DEFAULT 값 또는 표현식;

SET SERVEROUTPUT ON;
DECLARE
    V_DEPTNO NUMBER(2) DEFAULT 10;
BEGIN
    DBMS_OUTPUT.PUT_LINE('V_DEPTNO: ' || V_DEPTNO);
END;
/
--V_DEPTNO: 10
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.