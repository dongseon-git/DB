--LENGTH 문자열의 길이를 구하는 함수
SELECT 
    ename,
    LENGTH(ename) AS ename_len
FROM emp
--WHERE LENGTH(ename) >= 5
-- WHERE LENGTH(ename) 인덱스가 있어도 사용할 수 없음!
;

--ENAME       ENAME_LEN
------------ ----------
--ADAMS               5
--SMITH               5
--ALLEN               5
--WARD                4
--JONES               5
--MARTIN              6
--BLAKE               5
--CLARK               5
--SCOTT               5
--KING                4
--TURNER              6
--JAMES               5
--FORD                4
--MILLER              6