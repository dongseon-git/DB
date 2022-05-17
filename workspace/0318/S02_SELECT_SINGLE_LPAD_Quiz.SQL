--LPAD Quiz01
--EMP테이블을 사용하여 deptno가 10번인 사원들의 사원 이름을
--총 9바이트로 출력하되 빈 자리에는 해당 자리의 숫자로 채우세요.
SELECT
    ename,
    LPAD(ename,9,123456) AS "LPAD_01"
FROM emp
WHERE deptno = 10
;

--ENAME      LPAD_01  
------------ ---------
--CLARK      1234CLARK
--KING       12345KING
--MILLER     123MILLER