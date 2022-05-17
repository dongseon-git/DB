-- Student 테이블의 tel 컬럼을 참고하여 아래와 같이 지역별 인원수를 출력하세요.
-- 단, 02-SEOUL, 031-GYEONGGI, 051-BUSAN, 052-ULSAN,
--     053-DAEGU, 055-GYEONGNAM 으로 출력하세요.
-- TOTAL SEOUL GYEONGGI BUSAN ULSAN DAEGU GYEONGNAM
---------------------------------------------------
--    20     6        2     4     0     2         6
-- PIVOT 사용!!!
--SELECT * FROM(SELECT COUNT(*) AS TOTAL,SUBSTR(tel,1,INSTR(tel,')')-1) AS area FROM student GROUP BY tel)
SELECT * FROM(SELECT COUNT(*) OVER() AS TOTAL,SUBSTR(tel,1,INSTR(tel,')')-1) AS area FROM student)
PIVOT ( COUNT(area) FOR area IN (
                                  '02' AS SEOUL,
                                  '031' AS GYEONGGI,
                                  '051' AS BUSAN,
                                  '052' AS ULSAN,
                                  '053' AS DAEGU,
                                  '055' AS GYEONGNAM
                                  )
)
;
--     TOTAL      SEOUL   GYEONGGI      BUSAN      ULSAN      DAEGU  GYEONGNAM
------------ ---------- ---------- ---------- ---------- ---------- ----------
--        20          6          2          4          0          2          6