-- p126 Q5
-- 사원이름에 E가 포함되어 있는 30번 부서의 사원중 급여가 1000~2000사이가 아닌
-- 사원이름, 사원번호, 급여, 부서번호를출력하는 SQL문 작성
SELECT
    ename,
    empno,
    sal,
    deptno
FROM emp
WHERE ename LIKE '%E%'
AND deptno = 30
AND sal NOT BETWEEN 1000 AND 2000
;
--ENAME      EMPNO        SAL     DEPTNO
------------------ ---------- ----------
--BLAKE       7698       2850         30
--JAMES       7900        950         30