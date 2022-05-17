-- RANK()함수 : 주어진 컬럼 값의 그룹에서 값의 순위를 계산한 후 순위를 출력
--              같은 순위일 때 가지는 순위 기준에 대해서 같은 출력 값을 가진다
-- 동일한 순위 다음은 그 다음 순위로 표기된다. 공동2등 2명일시 그다음 순위 4등
-- RANK함수 안에 아무것도 안넣지만 다른 경우는 ExPression을 넣는 경우도 있다.
-- PARTITION BY가 GROUP BY 역할을 함

-- 각 부서별 급여 순위
SELECT
    empno,
    ename,
    sal,
    deptno,
    RANK() OVER(PARTITION BY deptno ORDER BY sal DESC) AS "RANK_DESC"
FROM emp
;
--     EMPNO ENAME             SAL     DEPTNO  RANK_DESC
------------ ---------- ---------- ---------- ----------
--      7839 KING             5000         10          1
--      7782 CLARK            2450         10          2
--      7934 MILLER           1300         10          3
--      7902 FORD             3000         20          1
--      7788 SCOTT            3000         20          1
--      7566 JONES            2975         20          3
--      7876 ADAMS            1100         20          4
--      7369 SMITH             800         20          5
--      7698 BLAKE            2850         30          1
--      7499 ALLEN            1600         30          2
--      7844 TURNER           1500         30          3
--      7521 WARD             1250         30          4
--      7654 MARTIN           1250         30          4
--      7900 JAMES             950         30          6