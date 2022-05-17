-- 달력만들기 PIVOT 미사용 MAX사용
SELECT 
    MAX(DECODE(day,'SUN',dayno)) AS SUN,
    MAX(DECODE(day,'MON',dayno)) AS MON,
    MAX(DECODE(day,'TUE',dayno)) AS TUE,
    MAX(DECODE(day,'WED',dayno)) AS WED,
    MAX(DECODE(day,'THU',dayno)) AS THU,
    MAX(DECODE(day,'FRI',dayno)) AS FRI,
    MAX(DECODE(day,'SAT',dayno)) AS SAT
FROM cal
GROUP BY weekno
ORDER BY weekno
;
--SU MO TU WE TH FR SA
---- -- -- -- -- -- --
--1  2  3  4  5  6  7 
--8  9  10 11 12 13 14
--15 16 17 18 19 20 21
--22 23 24 25 26 27 28
--29 30 31          