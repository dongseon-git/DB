-- p262 Q2
-- 전체 사원의 평균 급여(SAL)보다 높은 급여를 받는 사원들의 사원정보, 부서정보,
-- 급여등급 정보를 출력하는 SQL문 작성
-- 단, 출력할 때 급여가 많은 순으로 정렬하되 급여가 같을 경우에는 사원 번호를 기준으로 
--     오름차순으로 정렬하세요.

SELECT 
    t1.empno,
    t1.ename,
    t2.dname,
    TO_CHAR(t1.hiredate,'YYYY/MM/DD') AS hiredate,
    t2.loc,
    t1.sal,
    t3.grade
FROM emp t1, dept t2, salgrade t3
WHERE t1.deptno = t2.deptno
AND t1.sal >= t3.losal
AND t1.sal <= t3.hisal
AND sal > ( SELECT AVG(NVL(sal,0))
            FROM emp)
ORDER BY t1.sal DESC ,t1.empno ASC
;
-- EMPNO ENAME      DNAME          HIREDATE   LOC           SAL      GRADE
----------- ---------- -------------- ---------- ----------------- -------
--  7839 KING       ACCOUNTING     1981/11/17 NEW YORK     5000          5
--  7788 SCOTT      RESEARCH       1987/04/19 DALLAS       3000          4
--  7902 FORD       RESEARCH       1981/12/03 DALLAS       3000          4
--  7566 JONES      RESEARCH       1981/04/02 DALLAS       2975          4
--  7698 BLAKE      SALES          1981/05/01 CHICAGO      2850          4
--  7782 CLARK      ACCOUNTING     1981/06/09 NEW YORK     2450          4