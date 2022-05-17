--p98 5-3 revidw
-- 사원번호가 7499이고 부서번호가 30인 사원정보만 나오도록 만드시오
SELECT *
FROM emp
WHERE empno = 7499
AND deptno = 30
;
--EMPNO, ENAME, JOB,        MGR,    HIREDATE,   SAL,    COMM,   DEPTNO
-------------------------------------------------------------------------
--7499	 ALLEN	SALESMAN	7698	81/02/20	1600	300	    30