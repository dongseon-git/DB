-- GROUP BY절 : 결과 값을 원하는 열로 묶어 출력
-- GROUP BY절에 명시하는 열은 여러개 지정할 수 있습니다.
-- 먼저 지정한 열로 대그룹을 나누고 그다음 지정한 열로 소그룹을 나눕니다.
-- GROUP BY절에는 별칭(AS)이 인식되지 않는다. 즉 열 이름이나 연산식을 그대로 지정해야함

-- SELECT [조회할 열 이름]
-- FROM [조회할 테이블 이름]
-- WHERE [조회할 행을 선별하는 조건식]
-- GROUP BY [그룹화할 열을 지정(여러개 지정 가능)]
-- ORDER BY [정렬하려는 열 지정]

-- 부서별 급여 합계
--SELECT SUM(sal),'10' AS "DEPTNO" FROM emp WHERE deptno = 10
--UNION ALL
--SELECT SUM(sal),'20' FROM emp WHERE deptno = 20
--UNION ALL
--SELECT SUM(sal),'30' FROM emp WHERE deptno = 30;
--  SUM(SAL) DEPTNO
------------ ------
--      8750 10
--     10875 20
--      9400 30

SELECT deptno,SUM(sal)
FROM emp
GROUP BY deptno
;