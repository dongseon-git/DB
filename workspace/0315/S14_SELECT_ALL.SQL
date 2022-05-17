-- ALL 중복되는 열 제거 없이 그대로 출력하기
-- (DEFAULT) ALL을 생략해도 동일 
SELECT ALL
    job,
    DEPTNO
FROM
    emp;
    
--JOB       DEPTNO
----------------------------  
--CLERK	    20
--SALESMAN	30
--SALESMAN	30
--MANAGER	20
--SALESMAN	30
--MANAGER	30
--MANAGER	10
--ANALYST	20
--PRESIDENT	10
--SALESMAN	30
--CLERK	    20
--CLERK	    30
--ANALYST	20
--CLERK	    10