-- student테이블의 birthday 컬럼을 참조해서 아래와 같이 월별로 생일자수를 출력하세요
-- TOTAL JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC
--------------------------------------------------------
--  20EA 3EA 3EA 2EA 2EA 0EA 1EA 0EA 2EA 2EA 2EA 1EA 2EA

SELECT
    COUNT(*)||'EA' AS TOTAL,
    COUNT(DECODE(t1.month,'01',0))||'EA' AS JAN,
    COUNT(DECODE(t1.month,'02',0))||'EA' AS FEB,
    COUNT(DECODE(t1.month,'03',0))||'EA' AS MAR,
    COUNT(DECODE(t1.month,'04',0))||'EA' AS APR,
    COUNT(DECODE(t1.month,'05',0))||'EA' AS MAY,
    COUNT(DECODE(t1.month,'06',0))||'EA' AS JUN,
    COUNT(DECODE(t1.month,'07',0))||'EA' AS JUL,
    COUNT(DECODE(t1.month,'08',0))||'EA' AS AUG,
    COUNT(DECODE(t1.month,'09',0))||'EA' AS SEP,
    COUNT(DECODE(t1.month,'10',0))||'EA' AS OCT,
    COUNT(DECODE(t1.month,'11',0))||'EA' AS NOV,
    COUNT(DECODE(t1.month,'12',0))||'EA' AS DEC
FROM(
    SELECT TO_CHAR(birthday,'MM') AS MONTH
    FROM student
) t1
;
--TOTAL JAN  FEB  MAR  APR  MAY  JUN  JUL  AUG  SEP  OCT  NOV  DEC 
------- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
--20EA  3EA  3EA  2EA  2EA  0EA  1EA  0EA  2EA  2EA  2EA  1EA  2EA 