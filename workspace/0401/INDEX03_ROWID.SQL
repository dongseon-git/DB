-- ROWID : 오라클에서 데이터(ROWID)의 주소를 주소라 표현하지 않고 ROWID라 한다.
--  AAASHtAAHAAAACXAAF
-- AAASHt : 데이터 오브젝트 번호
-- AAH    : 파일번호
-- AAAACX : BLOCK번호
-- AAF    : ROW번호

SELECT 
    ROWID,
    empno,
    ename
FROM emp;
--ROWID                   EMPNO ENAME     
-------------------- ---------- ----------
--AAASHtAAHAAAACXAAA       7369 SMITH     
--AAASHtAAHAAAACXAAB       7499 ALLEN     
--AAASHtAAHAAAACXAAC       7521 WARD      
--AAASHtAAHAAAACXAAD       7566 JONES     
--AAASHtAAHAAAACXAAE       7654 MARTIN    
--AAASHtAAHAAAACXAAF       7698 BLAKE     
--AAASHtAAHAAAACXAAG       7782 CLARK     
--AAASHtAAHAAAACXAAH       7839 KING      
--AAASHtAAHAAAACXAAI       7844 TURNER    
--AAASHtAAHAAAACXAAJ       7900 JAMES     
--AAASHtAAHAAAACXAAK       7902 FORD      
--AAASHtAAHAAAACXAAL       7934 MILLER 

SELECT 
    ROWID,
    empno,
    ename
FROM emp
WHERE ROWID = 'AAASHtAAHAAAACXAAF'
;
--ROWID                   EMPNO ENAME     
-------------------- ---------- ----------
--AAASHtAAHAAAACXAAF       7698 BLAKE     
