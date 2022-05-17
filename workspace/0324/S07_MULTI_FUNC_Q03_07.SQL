-- student 테이블의 Tel 컬럼을 사용하여 아래와 같이 지역별 인원수와
-- 전체대비 차지하는 비율을 출력하세요.
-- (단, 02-SEOUL, 031-GYEONGGI, 051-BUSAN, 052-ULSAN,
--      053-DAEGU,055-GYEONGNAM으로 출력하세요.)

SELECT
    COUNT(*)                      ||'EA ('|| COUNT(*)                      /COUNT(*)*100 ||'%)' AS TOTAL,
    COUNT(DECODE(t1.area,'055',0))||'EA ('|| COUNT(DECODE(t1.area,'055',0))/COUNT(*)*100 ||'%)' AS SEOUL,
    COUNT(DECODE(t1.area,'031',0))||'EA ('|| COUNT(DECODE(t1.area,'031',0))/COUNT(*)*100 ||'%)' AS GYEONGGI,
    COUNT(DECODE(t1.area,'051',0))||'EA ('|| COUNT(DECODE(t1.area,'051',0))/COUNT(*)*100 ||'%)' AS BUSAN,
    COUNT(DECODE(t1.area,'052',0))||'EA ('|| COUNT(DECODE(t1.area,'052',0))/COUNT(*)*100 ||'%)' AS ULSAN,
    COUNT(DECODE(t1.area,'053',0))||'EA ('|| COUNT(DECODE(t1.area,'053',0))/COUNT(*)*100 ||'%)' AS DAEGU,
    COUNT(DECODE(t1.area,'055',0))||'EA ('|| COUNT(DECODE(t1.area,'055',0))/COUNT(*)*100 ||'%)' AS GYEONGNAM
FROM(
    SELECT
        SUBSTR(tel,1,INSTR(tel,')')-1) AS area
    FROM student
) t1
;
--TOTAL        SEOUL        GYEONGGI     BUSAN        ULSAN        DAEGU        GYEONGNAM   
-------------- ------------ ------------ ------------ ------------ ------------ ------------
--20EA (100%)  6EA (30%)    2EA (10%)    4EA (20%)    0EA (0%)     2EA (10%)    6EA (30%)  