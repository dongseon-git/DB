-- VIEW 삭제
--DROP VIEW  뷰이름;
DROP VIEW view01;
--View VIEW01이(가) 삭제되었습니다.

-- VIEW 삭제 후 확인
COL view_name FOR A20
COL text FOR A50
COL read_only FOR A10
SELECT 
    t1.view_name,
    t1.text,
    t1.read_only
FROM user_views t1
;
--VIEW_NAME            TEXT                                               READ_ONLY 
---------------------- -------------------------------------------------- ----------
--VIEW02               ( SELECT a,b                                       Y         
--                         FROM o_table)                                            
--                     WITH READ ONLY                                               
--
--VW_EMP20             ( SELECT empno, ename, job, deptno                 N         
--                          FROM emp                                                
--                          WHERE deptno = 20                                       
--                     )                                                            