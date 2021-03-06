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
OPEN C1;
LOOP FETCH C1 INTO V_EMP_ROW;
DBMS_OUTPUT.PUT_LINE('EMPNO: ' || V_EMP_ROW.EMPNO ||
                     'ENAME: ' || V_EMP_ROW.ENAME ||
                     'JOB: ' || V_EMP_ROW.JOB ||
                     'SAL: ' || V_EMP_ROW.SAL ||
                     'DEPTNO: ' || V_EMP_ROW.DEPTNO);
EXIT WHEN C1%NOTFOUND;
END LOOP;
CLOSE C1;
EXCEPTION 
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('SQLCODE: ' || TO_CHAR(SQLCODE));
DBMS_OUTPUT.PUT_LINE('SQLERRM: ' || SQLERRM);
END;
/
