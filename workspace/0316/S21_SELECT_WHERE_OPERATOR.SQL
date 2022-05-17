--비교연산자
--급여가 3000이상인 사원을 조회하세요
SELECT *
FROM emp
WHERE sal >= 3000 -- 3000보다 같거나 큰 sal
;
--EMPNO ENAME,  JOB,        MGR,    HIREDATE,   SAL, COMM,  DEPTNO
--------------------------------------------------------------
--7788	SCOTT	ANALYST	    7566	87/04/19	3000		20
--7839	KING	PRESIDENT		    81/11/17	5000		10
--7902	FORD	ANALYST	    7566	81/12/03	3000		20