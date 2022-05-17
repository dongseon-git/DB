--계층형 쿼리의 기본 구조
SELECT EMPNO,
       ENAME,
       JOB,
       MGR,
       LEVEL,
       LPAD('',(LEVEL-1)*2,' ')|| ENAME AS DEPTH_ENAME
FROM EMP
START WITH MGR IS NULL
CONNECT BY PRIOR EMPNO = MGR
ORDER SIBLINGS BY EMPNO --같은 LEVEL 행들의 정렬 컬럼 기입
;