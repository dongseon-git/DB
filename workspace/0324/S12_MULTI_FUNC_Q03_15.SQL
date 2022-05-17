-- professor 테이블을 조회하여 학과번호 , 교수명 , 급여 , 학과별 급여 합계를 구하고
-- 각 교수의 급여가 해당 학과별 급여 합계에서 차지하는 비율을 출력하세요.
--PROFNO, NAME, ID, POSITION, PAY, HIREDATE, BONUS, DEPTNO, EMAIL, HPAGE
SELECT
    deptno,
    name,
    pay,
    SUM(pay) OVER(PARTITION BY deptno) AS "TOTAL_PAY",
    ROUND(RATIO_TO_REPORT(pay) OVER(PARTITION BY deptno)*100,2) AS "RATIO_%"
FROM professor
ORDER BY deptno,pay
;
--    DEPTNO NAME                        PAY  TOTAL_PAY    RATIO_%
------------ -------------------- ---------- ---------- ----------
--       101 Audie Murphy                550       1200      45.83
--       101 Angela Bassett              380       1200      31.66
--       101 Jessica Lange               270       1200       22.5
--       102 Winona Ryder                250       1090      22.93
--       102 Michelle Pfeiffer           350       1090      32.11
--       102 Whoopi Goldberg             490       1090      44.95
--       103 Emma Thompson               530       1150      46.08
--       103 Julia Roberts               330       1150      28.69
--       103 Sharon Stone                290       1150      25.21
--       201 Meryl Streep                570        900      63.33
--       201 Susan Sarandon              330        900      36.66
--       202 Nicole Kidman               310        570      54.38
--       202 Holly Hunter                260        570      45.61
--       203 Meg Ryan                    500        500        100
--       301 Andie Macdowell             220        510      43.13
--       301 Jodie Foster                290        510      56.86