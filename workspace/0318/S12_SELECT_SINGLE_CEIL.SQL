-- CEIL()함수 : CEIL(숫자) 주어진 숫자와 가장 근접한 큰 정수를 출력
--ROWNUM : 출력되는 순서대로 넘버링 처리
SELECT 
    ROWNUM,
    ename,
--  ROWNUM/3,
    CEIL(ROWNUM/3) AS "CEIL01"
FROM emp
;
--    ROWNUM ENAME          CEIL01
------------ ---------- ----------
--         1 ADAMS               1
--         2 SMITH               1
--         3 ALLEN               1
--         4 WARD                2
--         5 JONES               2
--         6 MARTIN              2
--         7 BLAKE               3
--         8 CLARK               3
--         9 SCOTT               3
--        10 KING                4
--        11 TURNER              4
--        12 JAMES               4
--        13 FORD                5
--        14 MILLER              5