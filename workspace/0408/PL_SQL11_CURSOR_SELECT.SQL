-- 18. 커서와 예외처리

-- 커서 (cursor)
-- SELECT문 또는 DML 같은 SQL문을 실행했을 때 해당 SQL문을 처리하는 정보를 저장한 메모리공간
-- (명시적 커서, 묵시적 커서)

-- SELECT INTO
--  조회 되는 데이터가 단 하나의 행일 때 사용가능한 방식
-- 문법)
--  SELECT 열1,열2,...열n INTO 변수1,변수2,...변수n
--  FROM ...

SET SERVEROUTPUT ON;
DECLARE
    V_DEPT DEPT%ROWTYPE;
BEGIN
    SELECT deptno, dname, loc INTO V_DEPT
    FROM dept
    WHERE deptno = 40;
    
    DBMS_OUTPUT.PUT_LINE('DEPTNO: ' || V_DEPT.deptno);
    DBMS_OUTPUT.PUT_LINE('DNAME: '  || V_DEPT.dname);
    DBMS_OUTPUT.PUT_LINE('LOC: '    || V_DEPT.loc);
    
END;
/
-- 다건 추출시 예외 발생! -- WHERE deptno = 40 이 없을 시 
--오류 보고 -
--ORA-01422: 실제 인출은 요구된 것보다 많은 수의 행을 추출합니다
--ORA-06512:  4행

--DEPTNO: 40
--DNAME: OPERATIONS
--LOC: BOSTON
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.
