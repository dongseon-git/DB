-- EMP테이블을 사용하여 직원들의 급여와 전체 급여의 누적 급여금액을 출력하세요.
-- 단 급여를 오름차순으로 정렬해서 출력하세요.
SELECT
    deptno,
    ename,
    sal,
    SUM(sal) OVER (ORDER BY sal,ename) AS TOTAL
    -- 동일한 데이터가 연속될 경우 ORDER BY절에 중복되지않는 정렬할 컬럼 추가)
FROM emp
;
--    DEPTNO ENAME             SAL      TOTAL
------------ ---------- ---------- ----------
--        20 SMITH             800        800
--        30 JAMES             950       1750
--        20 ADAMS            1100       2850
--        30 WARD             1250       4100
--        30 MARTIN           1250       5350
--        10 MILLER           1300       6650
--        30 TURNER           1500       8150
--        30 ALLEN            1600       9750
--        10 CLARK            2450      12200
--        30 BLAKE            2850      15050
--        20 JONES            2975      18025
--        20 SCOTT            3000      21025
--        20 FORD             3000      24025
--        10 KING             5000      29025