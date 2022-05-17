--인라인 뷰(INLINE VIEW)를 사용한 TOP-N SQL
--    SQL문에서 일회성으로 만들어 사용하는 뷰(View)
--    
-- ROWNUM 과 OREDER BY 관계

SELECT ROWNUM, t1.empno, t1.ename
FROM emp t1;
--    ROWNUM      EMPNO ENAME     
------------ ---------- ----------
--         1       7369 SMITH     
--         2       7499 ALLEN     
--         3       7521 WARD      
--         4       7566 JONES     
--         5       7654 MARTIN    
--         6       7698 BLAKE     
--         7       7782 CLARK     
--         8       7839 KING      
--         9       7844 TURNER    
--        10       7900 JAMES     
--        11       7902 FORD
--        12       7934 MILLER

SELECT ROWNUM, t1.empno, t1.ename, t1.sal
FROM emp t1
ORDER BY t1.sal;
--    ROWNUM      EMPNO ENAME             SAL
------------ ---------- ---------- ----------
--         1       7369 SMITH             800
--        10       7900 JAMES             950
--         3       7521 WARD             1250
--         5       7654 MARTIN           1250
--        12       7934 MILLER           1300
--         9       7844 TURNER           1500
--         2       7499 ALLEN            1600
--         7       7782 CLARK            2450
--         6       7698 BLAKE            2850
--         4       7566 JONES            2975
--        11       7902 FORD             3000
--         8       7839 KING             5000

SELECT ROWNUM, tt1.*
FROM ( SELECT 
           t1.empno,
           t1.ename,
           t1.sal
        FROM emp t1
        ORDER BY sal
) tt1
;
--    ROWNUM      EMPNO ENAME             SAL
------------ ---------- ---------- ----------
--         1       7369 SMITH             800
--         2       7900 JAMES             950
--         3       7521 WARD             1250
--         4       7654 MARTIN           1250
--         5       7934 MILLER           1300
--         6       7844 TURNER           1500
--         7       7499 ALLEN            1600
--         8       7782 CLARK            2450
--         9       7698 BLAKE            2850
--        10       7566 JONES            2975
--        11       7902 FORD             3000
--        12       7839 KING             5000