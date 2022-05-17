-- p263 Q4
-- 직책이 SALESMAN인 사람들의 최고 급여보다 높은 급여를 받는 사원들의 사원정보,
-- 급여등급 정보를 출력하는 SQL문을 작성하세요.
-- 단, 서브쿼리를 활용할 때 다중행 함수를 사용하는 방법과 사용하지 않는 방법을 통해
-- 사원번호를 기준으로 오름차순으로 정렬하세요.

-- 다중행 함수를 사용하는 방법
SELECT
    t1.empno,
    t1.ename,
    t1.sal,
    t2.grade
FROM emp t1, salgrade t2
WHERE t1.sal >= t2.losal
AND t1.sal <= t2.hisal
AND sal >ALL ( SELECT sal
               FROM emp
               WHERE job = 'SALESMAN')
ORDER BY t1.empno ASC
;

-- 다중행 함수를 사용하지 않는 방법
SELECT
    t1.empno,
    t1.ename,
    t1.sal,
    t2.grade
FROM emp t1, salgrade t2
WHERE t1.sal >= t2.losal
AND   t1.sal <= t2.hisal
AND   t1.sal > ( SELECT MAX(sal)
                 FROM emp
                 WHERE job = 'SALESMAN')
ORDER BY t1.empno ASC
;
--     EMPNO ENAME             SAL      GRADE
------------ ---------- ---------- ----------
--      7566 JONES            2975          4
--      7698 BLAKE            2850          4
--      7782 CLARK            2450          4
--      7788 SCOTT            3000          4
--      7839 KING             5000          5
--      7902 FORD             3000          4