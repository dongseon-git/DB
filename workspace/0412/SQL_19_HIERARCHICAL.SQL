--계층형 쿼리의 기본 구조: ENAME이 JONES인 사원은 계층 구조 전개를 하지 않겠다.
SELECT EMPNO,
       ENAME,
       JOB,
       MGR,
       LEVEL,
       LPAD('',(LEVEL-1)*2,' ')|| ENAME AS DEPTH_ENAME
FROM EMP
WHERE ENAME <> 'JONES'
START WITH MGR IS NULL
CONNECT BY PRIOR EMPNO = MGR
           
ORDER SIBLINGS BY EMPNO --같은 LEVEL 행들의 정렬 컬럼 기입
;