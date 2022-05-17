-- p262 Q1
-- 전체 사원 중 ALLEN과 같은 직책(JOB)인 사원들의 사원정보, 부서 정보를 출력
SELECT
    t1.job,
    t1.empno,
    t1.ename,
    t1.sal,
    t1.deptno,
    t2.dname
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
AND job = (SELECT job
            FROM emp
            WHERE ename = 'ALLEN')
ORDER BY 1 desc
;
--JOB            EMPNO ENAME             SAL     DEPTNO DNAME         
----------- ---------- ---------- ---------- ---------- --------------
--SALESMAN        7499 ALLEN            1600         30 SALES         
--SALESMAN        7844 TURNER           1500         30 SALES         
--SALESMAN        7654 MARTIN           1250         30 SALES         
--SALESMAN        7521 WARD             1250         30 SALES    