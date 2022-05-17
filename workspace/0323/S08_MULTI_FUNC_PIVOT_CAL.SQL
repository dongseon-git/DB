-- 달력만들기 PIVOT사용
SELECT * FROM(SELECT weekno AS "WEEK", day, dayno FROM cal)
PIVOT
( MAX(dayno) FOR day IN ( 'SUN' AS SUN,
                          'MON' AS MON,
                          'TUE' AS TUE,
                          'WED' AS WED,
                          'THU' AS THU,
                          'FRI' AS FRI,
                          'SAT' AS SAT
                        )
)
ORDER BY WEEK
;