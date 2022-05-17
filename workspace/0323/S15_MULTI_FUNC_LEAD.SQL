-- LEAD()함수 : 이후 행 값을 가져올 때 사용하는 함수
-- LEAD(출력할 컬럼, OFFSET, 기본 출력값)
--     OVER(Query_partition구문, ORDER BY 정렬할 컬럼)
-- OFFSET : 해당 행의 OFFSET번째 이후값 
-- 기본출력값 : defualt값. 지정하여 출력

SELECT
    ename,
    hiredate,
    sal,
    LEAD(sal,1,0) OVER (ORDER BY hiredate) AS "LEAD"
FROM emp
;
--ENAME      HIREDATE        SAL       LEAD
------------ -------- ---------- ----------
--SMITH      80/12/17        800       1600
--ALLEN      81/02/20       1600       1250
--WARD       81/02/22       1250       2975
--JONES      81/04/02       2975       2850
--BLAKE      81/05/01       2850       2450
--CLARK      81/06/09       2450       1500
--TURNER     81/09/08       1500       1250
--MARTIN     81/09/28       1250       5000
--KING       81/11/17       5000        950
--JAMES      81/12/03        950       3000
--FORD       81/12/03       3000       1300
--MILLER     82/01/23       1300       1100
--ADAMS      87/02/21       1100       3000
--SCOTT      87/04/19       3000          0