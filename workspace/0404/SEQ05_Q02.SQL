-- p357 Q2

-- 문제1번에서 생성한 EMPIDX테이블의 데이터 중 급여(SAL)가 1500 초과인 사원들만 출력하는
-- EMPIDX_OVER15K 뷰를 생성해 보세요. 이 이름을 가진 뷰가 이미 존재할 경우 새로운 내용으로
-- 대체 가능해야 합니다. EMPIDX_OVER15K뷰는 사원번호, 사원이름, 직책, 부서번호, 급여
-- 추가 수당 열을 가지고 있습니다. 추가 수당 열의 경우에 추가 수당이 존재하면 O,
-- 존재하지 않으면 X 로 출력합니다.

CREATE OR REPLACE VIEW empidx_over15
AS (SELECT
        t1.empno,
        t1.ename,
        t1.job,
        t1.deptno,
        t1.sal,
        DECODE(t1.comm,NULL,'X','O') AS COMM
    FROM empidx t1
    WHERE t1.sal > 1500)
;
--View EMPIDX_OVER15K이(가) 생성되었습니다.

COL view_name FOR A20
COL read_only FOR A11
SELECT 
    view_name,
    text,
    read_only
FROM user_views
WHERE view_name = 'EMPIDX_OVER15K'
;
--	VIEW_NAME   TEXT   	                                      VIEW_NAME   
-------------------------------------------------------------------------------------
--EMPIDX_OVER15K  (SELECT                                       EMPIDX_OVER15K  
--				       t1.empno,                             
--				       t1.ename,                             
--				   	   t1.job, 
--				   	   t1.deptno, 
--				   	   t1.sal, 
--				   	   DECODE(t1.comm,NULL,'X','O') AS COMM 
--                 FROM empidx t1
--                 WHERE t1.sal > 1500)

COL COMM FOR A5
SELECT * FROM empidx_over15k;
--     EMPNO ENAME      JOB           DEPTNO        SAL COMM 
------------ ---------- --------- ---------- ---------- -----
--      7788 SCOTT      ANALYST           20       3000 X    
--      7499 ALLEN      SALESMAN          30       1600 O    
--      7566 JONES      MANAGER           20       2975 X    
--      7698 BLAKE      MANAGER           30       2850 X    
--      7782 CLARK      MANAGER           10       2450 X    
--      7839 KING       PRESIDENT         10       5000 X    
--      7902 FORD       ANALYST           20       3000 X