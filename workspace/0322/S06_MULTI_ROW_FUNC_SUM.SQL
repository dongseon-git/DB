-- SUM()함수 : 입력 데이터들의 합계 값을 구하는 함수
-- SUM([DISTINCT,ALL])
-- OVER(분석을 위한 여러 문법)
--SAL
--------
800
950
1100
1250
1250
1300
1500
1600
2450
2850
2975
3000
3000
5000
SELECT
    SUM(ALL sal), --sal 총합
    SUM(DISTINCT sal), -- sal 중복데이터 제거 총합
    SUM(sal) AS "SUM(SAL)" -- 생략하면 default = ALL
FROM emp
ORDER BY sal
;
--SUM(ALLSAL) SUM(DISTINCTSAL)   SUM(SAL)
------------- ---------------- ----------
--      29025            24775      29025