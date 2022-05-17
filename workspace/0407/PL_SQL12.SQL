-- 변수의 자료형
--  저장할 데이터에 따라 스칼라,복합,참조,LOB(Lage OBject)로 구분된다.

-- 참조형(reference type)
--  특정 테이블의 열의 자료형, 하나의 행 구조를 참조하는 자료형 
--  변수이름 테이블.열이름%TYPE;
--  변수이름 테이블.%ROWTYPE;

SET SERVEROUTPUT ON;
DECLARE
    V_DEPT_ROW DEPT%ROWTYPE;
BEGIN
    SELECT deptno, dname, loc INTO V_DEPT_ROW
    FROM dept
    WHERE deptno = 40;
    
    DBMS_OUTPUT.PUT_LINE('DEPTNO: ' || V_DEPT_ROW.DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DNAME: ' || V_DEPT_ROW.DNAME);
    DBMS_OUTPUT.PUT_LINE('LOC: ' || V_DEPT_ROW.LOC);
END;
/
--DEPTNO: 40
--DNAME: OPERATIONS
--LOC: BOSTON
--PL/SQL 프로시저가 성공적으로 완료되었습니다.