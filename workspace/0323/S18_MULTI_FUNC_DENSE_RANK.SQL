-- DENSE_RANK : 주어진 컬럼 값의 그룹에서 값의 순위를 계산한 후 순위를 출력
--              같은 순위일 때 가지는 순위 기준에 대해서 같은 출력 값을 가진다
--동일 순위를 하나의 건수로 간주함. 공동2등 2명일시 그다음 순위 3등

SELECT
    empno,
    ename,
    sal,
    RANK() OVER(ORDER BY sal DESC) AS "RANK_DESC",
    DENSE_RANK() OVER(ORDER BY sal DESC) AS "DENSE_RANK"    
FROM emp
;
--     EMPNO ENAME             SAL  RANK_DESC DENSE_RANK
------------ ---------- ---------- ---------- ----------
--      7839 KING             5000          1          1
--      7902 FORD             3000          2          2
--      7788 SCOTT            3000          2          2
--      7566 JONES            2975          4          3
--      7698 BLAKE            2850          5          4
--      7782 CLARK            2450          6          5
--      7499 ALLEN            1600          7          6
--      7844 TURNER           1500          8          7
--      7934 MILLER           1300          9          8
--      7654 MARTIN           1250         10          9
--      7521 WARD             1250         10          9
--      7876 ADAMS            1100         12         10
--      7900 JAMES             950         13         11
--      7369 SMITH             800         14         12