-- HAVING절 : GROUP BY절에 조건을 줄 때 사용 (GROUP BY절 내에 있는 조건)
-- HAVING절은 SELECT문에 GROUP BY절이 존재할 때만 사용할 수 있다.
-- 그리고 GROUP BY절을 통해 그룹화 된 결과 값의 범위를 제한하는데 사용합니다.

-- SELECT [조회할 열 이름]
-- FROM [조회할 테이블 이름]
-- WHERE [조회할 행을 선별하는 조건식]
-- GROUP BY [그룹화할 열을 지정(여러개 지정 가능)]  WHERE절은 출력 대상 행을 제한하고,
-- HAVING [출력 그룹을 제한하는 조건식             HAVING절은 그룹화 된 대상을 출력에서 제한한다.
-- ORDER BY [정렬하려는 열 지정]

-- EMP테이블에서 평균 급여가 2000만원 이상인 부서의 부서번호, 평균 급여를 출력하기
--SELECT deptno, AVG(NVL(sal,0))
--FROM emp
--WHERE AVG(NVL(sal,0)) >= 2000     -- WHERE절 에선 그룹함수 사용 불가 (HAVING사용)
--GROUP BY deptno
--;
--ORA-00934: 그룹 함수는 허가되지 않습니다

SELECT deptno, AVG(NVL(sal,0))
FROM emp
GROUP BY deptno
HAVING AVG(NVL(sal,0)) >= 2000
;
--    DEPTNO AVG(NVL(SAL,0))
------------ ---------------
--        10      2916.66667
--        20            2175