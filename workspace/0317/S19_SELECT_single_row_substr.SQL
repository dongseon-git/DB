-- SUBSTR함수와 다른 함수 함께 사용하기 ( 마이너스 )
-- 마이너스를 붙이면 오른쪽->왼쪽으로 검색을 한 후 왼쪽->오른쪽으로 글자수를 세어 추출
--  C  L  E  R  K
-- -5 -4 -3 -2 -1
SELECT
    job,
    LENGTH(job),
    SUBSTR(job,-LENGTH(job)),
    SUBSTR(job,-LENGTH(job),2),
    SUBSTR(job,-3)
FROM emp
;
--JOB       LENGTH(JOB) SUBSTR(JOB,-LENGTH(JOB))   SUBSTR(JOB,-LENGTH(JOB),2)   SUBSTR(JOB,-3)
----------- ----------- --------- -- ---
--CLERK               5 CLERK                       CL                          ERK
--CLERK               5 CLERK                       CL                          ERK
--SALESMAN            8 SALESMAN                    SA                          MAN
--SALESMAN            8 SALESMAN                    SA                          MAN
--MANAGER             7 MANAGER                     MA                          GER
--SALESMAN            8 SALESMAN                    SA                          MAN
--MANAGER             7 MANAGER                     MA                          GER
--MANAGER             7 MANAGER                     MA                          GER
--ANALYST             7 ANALYST                     AN                          YST
--PRESIDENT           9 PRESIDENT                   PR                          ENT
--SALESMAN            8 SALESMAN                    SA                          MAN
--CLERK               5 CLERK                       CL                          ERK
--ANALYST             7 ANALYST                     AN                          YST
--CLERK               5 CLERK                       CL                          ERK