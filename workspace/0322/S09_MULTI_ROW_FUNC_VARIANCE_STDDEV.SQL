-- 분산 표준편차글 VARIANCE() / STDDEV()
SELECT 
    TRUNC(VARIANCE(sal),2) AS "VARIANCE(sal)",
    TRUNC(STDDEV(sal),3) AS "STDDEV(sal)",
    TRUNC(AVG(NVL(sal,0)),4) AS "AVG(NVL(sal,0)"
FROM emp
;
--VARIANCE(sal) STDDEV(sal) AVG(NVL(sal,0)
--------------- ----------- --------------
--   1398313.87    1182.503      2073.2142