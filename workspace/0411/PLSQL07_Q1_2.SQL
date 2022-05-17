SET SERVEROUTPUT ON;
DECLARE
V_EMP_ROW EMP%ROWTYPE;
CURSOR C1 IS
SELECT EMPNO,
       ENAME,
       JOB,
       MGR,
       HIREDATE,
       SAL,
       COMM,
       DEPTNO
       FROM EMP;    
BEGIN
FOR C1_REC IN C1 LOOP
DBMS_OUTPUT.PUT_LINE('EMPNO: ' || C1_REC.EMPNO ||
                     'ENAME: ' || C1_REC.ENAME ||
                     'JOB: ' || C1_REC.JOB ||
                     'SAL: ' || C1_REC.SAL ||
                     'DEPTNO: ' || C1_REC.DEPTNO);
END LOOP;
EXCEPTION 
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('SQLCODE: ' || TO_CHAR(SQLCODE));
DBMS_OUTPUT.PUT_LINE('SQLERRM: ' || SQLERRM);
END;
/