-- GROUPING SETS()함수
-- 같은 수준의 그룹화 열이 여러 개일 때 각 열별 그룹화를 통해 결과 값을 출력하는데 사용

SELECT grade,deptno1,COUNT(*)
FROM student
GROUP BY GROUPING SETS(grade,deptno1)
;
-- 하나의 테이블에 여러 그룹 함수가 사용된다면 GROUPING SETS() 함수를 활용하는 것이 좋다
--     GRADE    DEPTNO1   COUNT(*)
------------ ---------- ----------
--                  101          4
--                  103          2
--                  202          2
--                  301          2
--                  201          6
--                  102          4
--         2                     5
--         4                     5
--         3                     5
--         1                     5