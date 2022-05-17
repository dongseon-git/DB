-- 변수에 NULL값 저장 막기
--  변수이름 자료형 NOT NULL := 또는 DEFAULT  값 또는 표현식;
SET SERVEROUTPUT ON;
DECLARE
--    V_DEPTNO NUMBER(2) NOT NULL := 10;
    V_DEPTNO NUMBER(2) NOT NULL DEFAULT 20;
BEGIN
    DBMS_OUTPUT.PUT_LINE('V_DEPTNO: ' || V_DEPTNO);
END;
/
--V_DEPTNO: 10
--
--V_DEPTNO: 20
--PL/SQL 프로시저가 성공적으로 완료되었습니다.