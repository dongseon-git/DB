--RPAD Quiz01
--EMP테이블에서 deptno가 10번인 사원들의 이름을 총 9자리로 출력하되
--오른쪽 빈자리에는 해당 자리 수에 해당하는 숫자가 출력되도록하세요.
-- CLARK6789    KING56789   MILLER789
SELECT
    ename,
--  LENGTH(ename)+1,
--  SUBSTR('1234567890',LENGTH(ename)+1),
    RPAD(ename,9,SUBSTR('1234567890',LENGTH(ename)+1)) AS "RPAD_01"
FROM emp
WHERE deptno = 10
;
--ENAME      RPAD_01  
------------ ---------
--CLARK      CLARK6789
--KING       KING56789
--MILLER     MILLER789