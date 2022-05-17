-- LIKE 연산자
-- 게시판 제목 또는 내용 검색 기능처럼 일부 문자열이 포함된 데이터 조회

-- ename에서 S로 시작하는 'S%' , S로 끝나는 '%S'
--SELECT
--    empno,
--    ename,
--    job,
--    deptno
--FROM emp
--WHERE ename LIKE 'S%'
--;

--     EMPNO ENAME      JOB           DEPTNO
------------ ---------- --------- ----------
--      7369 SMITH      CLERK             20
--      7788 SCOTT      ANALYST           20

-- ename에서 S를 포함하고 있는
-- 조회 속도가 S%, %S에 비해서 느릴수 있다.
SELECT
    empno,
    ename,
    job,
    deptno
FROM emp
WHERE ename LIKE '%S%'
;

--  EMPNO ENAME      JOB           DEPTNO
--------- ---------- --------- ----------
--   7369 SMITH      CLERK             20
--   7566 JONES      MANAGER           20
--   7788 SCOTT      ANALYST           20
--   7876 ADAMS      CLERK             20
--   7900 JAMES      CLERK             30