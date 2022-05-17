-- GROUPING SETS()함수
-- 같은 수준의 그룹화 열이 여러 개일 때 각 열별 그룹화를 통해 결과 값을 출력하는데 사용

-- SELECT [조회할 열 이름]
-- FROM [조회할 테이블 이름]
-- WHERE [조회할 행을 선별하는 조건식]
-- GROUP BY GROUPING SETS[그룹화할 열을 지정(여러개 지정 가능)]
-- ORDER BY [정렬하려는 열 지정]

SELECT grade,COUNT(*)
FROM student
GROUP BY grade
UNION
SELECT deptno1,COUNT(*)
FROM student
GROUP BY deptno1
;
--     GRADE   COUNT(*)
------------ ----------
--         1          5
--         2          5
--         3          5
--         4          5
--       101          4
--       102          4
--       103          2
--       201          6
--       202          2
--       301          2