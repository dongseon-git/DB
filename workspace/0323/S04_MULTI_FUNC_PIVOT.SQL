-- PIVOT, UNPIVOT
-- PIVOT : ROW단위를 COLUMN단위로 변경
-- UNPIVOT : COLUMN단위를 ROW단위로 변경

COL	M01	FOR	99
COL	M02	FOR	99
COL	M03	FOR	99
COL	M04	FOR	99
COL	M05	FOR	99
COL	M06	FOR	99
COL	M07	FOR	99
COL	M08	FOR	99
COL	M09	FOR	99
COL	M10	FOR	99
COL	M11	FOR	99
COL	M12	FOR	99
-- GROUP BY , MAX 사용
SELECT
    year,
    MAX(DECODE(month,1,month))  AS M01,
    MAX(DECODE(month,2,month))  AS M02,
    MAX(DECODE(month,3,month))  AS M03,
    MAX(DECODE(month,4,month))  AS M04,
    MAX(DECODE(month,5,month))  AS M05,
    MAX(DECODE(month,6,month))  AS M06,
    MAX(DECODE(month,7,month))  AS M07,
    MAX(DECODE(month,8,month))  AS M08,
    MAX(DECODE(month,9,month))  AS M09,
    MAX(DECODE(month,10,month)) AS M10,
    MAX(DECODE(month,11,month)) AS M11,
    MAX(DECODE(month,12,month)) AS M12
FROM tb_pivot
GROUP BY year
;
--YEAR M01 M02 M03 M04 M05 M06 M07 M08 M09 M10 M11 M12
------ --- --- --- --- --- --- --- --- --- --- --- ---
--2022   1   2   3   4   5   6   7   8   9  10  11  12