-- professor테이블에서 각 교수들의 급여를 구하고 각 교수의 급여액이 전체 교수의
-- 급여 합계에서 차지하는 비율을 출력하세요.
SELECT
    deptno,
    name,
    pay,
    SUM(pay) OVER() AS "TOTAL_PAY",
    ROUND(RATIO_TO_REPORT(pay) OVER()*100,2) AS "RATIO_%"
FROM professor
ORDER BY "RATIO_%" DESC
;
--    DEPTNO NAME                        PAY  TOTAL_PAY    RATIO_%
------------ -------------------- ---------- ---------- ----------
--       201 Meryl Streep                570       5920       9.63
--       101 Audie Murphy                550       5920       9.29
--       103 Emma Thompson               530       5920       8.95
--       203 Meg Ryan                    500       5920       8.45
--       102 Whoopi Goldberg             490       5920       8.28
--       101 Angela Bassett              380       5920       6.42
--       102 Michelle Pfeiffer           350       5920       5.91
--       103 Julia Roberts               330       5920       5.57
--       201 Susan Sarandon              330       5920       5.57
--       202 Nicole Kidman               310       5920       5.24
--       103 Sharon Stone                290       5920        4.9
--       301 Jodie Foster                290       5920        4.9
--       101 Jessica Lange               270       5920       4.56
--       202 Holly Hunter                260       5920       4.39
--       102 Winona Ryder                250       5920       4.22
--       301 Andie Macdowell             220       5920       3.72