-- p444 Q2
-- DEPT테이블의 DEPTNO와 자료형이 같은 변수 V_DEPTNO를 선언합니다.
-- 그리고 V_DEPTNO 변수 값에 10,20,30,40을 대입했을 때 다음과 같이 부서 이름을 출력하는
-- 프로그램을 작성해보세요. 단, 부서번호가 10,20,30,40,이 아니면 N/A로 출력합니다.

--강사님 풀이
SET SERVEROUTPUT ON;
DECLARE
    V_DEPTNO DEPT.DEPTNO%TYPE := 50;
BEGIN
    CASE V_DEPTNO
        WHEN 10 THEN DBMS_OUTPUT.PUT_LINE('DNAME : ACCOUNTING');
        WHEN 20 THEN DBMS_OUTPUT.PUT_LINE('DNAME : RESEARCH');
        WHEN 30 THEN DBMS_OUTPUT.PUT_LINE('DNAME : SALES');
        WHEN 40 THEN DBMS_OUTPUT.PUT_LINE('DNAME : OPERATIONS');
        ELSE         DBMS_OUTPUT.PUT_LINE('DNAME : N/A');
    END CASE;
END;
/
--DNAME : ACCOUNTING
--DNAME : RESEARCH
--DNAME : SALES
--DNAME : OPERATIONS
--DNAME : N/A
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.

-- 직접풀이 - 예외처리 부분을 아직 배우지 않아서. 10,20,30,40이 아닌값 N/A출력 처리가 불가능
--SET SERVEROUTPUT ON;
--DECLARE
--    V_DEPTNO DEPT%ROWTYPE;
--BEGIN
--    SELECT DEPTNO,DNAME,LOC INTO V_DEPTNO
--    FROM DEPT
--    WHERE DEPTNO = 40;
--    CASE v_deptno.deptno
--        WHEN 10 THEN DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPTNO.DNAME);
--        WHEN 20 THEN DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPTNO.DNAME);
--        WHEN 30 THEN DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPTNO.DNAME);
--        WHEN 40 THEN DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPTNO.DNAME);
--        ELSE         DBMS_OUTPUT.PUT_LINE('DNAME : N/A');
--    END CASE;
--END;
--/