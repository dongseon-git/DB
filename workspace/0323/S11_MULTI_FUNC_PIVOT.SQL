-- PIVOT()함수
-- SELECT * FROM(SELECT year,month FROM tb_pivot)
-- PIVOT( PIVOT절 : 그룹 함수 적용된 컬럼 : MAX(month)
--        FOR절 : 피벗에 기준이 되는 컬럼 : FOR month
--        IN절 : PIVOT FOR에서 정의한 컬럼 필터링 : 1 AS M01, 2 AS M02...

-- FOR절의 가로줄에 표기할 열
-- IN절에 출력하려는 열데이터를 지정

-- 부서별, 직급별, 최고급여
SELECT * FROM(SELECT deptno AS "DEPTNO", job, sal FROM emp)
PIVOT( MAX(sal) FOR job IN ( 'CLERK'     AS "CLERK",
                             'SALESMAN'  AS "SALESMAN",
                             'ANALYST'   AS " ANALYST",
                             'MANAGER'   AS "MANAGER",
                             'PRESIDENT' AS "PRESIDENT"
                              )
)
ORDER BY DEPTNO
;
--    DEPTNO      CLERK   SALESMAN    ANALYST    MANAGER  PRESIDENT
------------ ---------- ---------- ---------- ---------- ----------
--        10       1300                             2450       5000
--        20       1100                  3000       2975           
--        30        950       1600                  2850           