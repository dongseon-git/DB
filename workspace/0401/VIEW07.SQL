-- VIEW Ȯ��
COL t1.view_name FOR A20
COL t1.text FOR A50
COL t1.read_only FOR A10
SELECT 
    t1.view_name,
    t1.text,
    t1.read_only
FROM user_views t1
;
--VIEW_NAME   TEXT                                 READ_ONLY
------------- ------------------------------------ ----------
--VW_EMP20    ( SELECT empno, ename, job, deptno   N
--                 FROM emp                         
--                 WHERE deptno = 20                
--            )                                     