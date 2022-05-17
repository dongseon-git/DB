-- LISTAGG() 컬럼을 ROW만들기
-- 4000byte이상은 표현 불가
-- ename    ename
-- scott    scott,king
-- king
-- 형식 : LISTAGG(합칠컬럼,구분자) WITHIN GROUP (ORDER BY 정렬컬럼)
col deptno for 9999
col list_agg for a40

SELECT deptno,
    LISTAGG(ename,',') WITHIN GROUP (ORDER BY ename) AS "LIST_AGG"
FROM emp
GROUP BY deptno
ORDER BY deptno
;
--DEPTNO LIST_AGG                                
-------- ----------------------------------------
--   10  CLARK,KING,MILLER                       
--   20  ADAMS,FORD,JONES,SCOTT,SMITH            
--   30  ALLEN,BLAKE,JAMES,MARTIN,TURNER,WARD  