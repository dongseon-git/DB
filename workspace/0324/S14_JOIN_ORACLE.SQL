-- emp테이블 : 14건
-- dept테이블 : 4건
-- 조인 조건이 누락 되면 카티션 곱 이 생성 : 14 * 4 = 56
-- 조인 조건을 적용시 14건을 출력함
SELECT
    e.empno,
    e.deptno,
    d.dname
FROM emp e, dept d
WHERE e.deptno = d.deptno
;
--     EMPNO     DEPTNO DNAME         
------------ ---------- --------------
--      7876         20 RESEARCH      
--      7369         20 RESEARCH      
--      7499         30 SALES         
--      7521         30 SALES         
--      7566         20 RESEARCH      
--      7654         30 SALES         
--      7698         30 SALES         
--      7782         10 ACCOUNTING    
--      7788         20 RESEARCH      
--      7839         10 ACCOUNTING    
--      7844         30 SALES         
--      7900         30 SALES         
--      7902         20 RESEARCH      
--      7934         10 ACCOUNTING 