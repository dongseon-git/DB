-- 테이블에 데이터 추가하는 INSERT문

--서브쿼리를 사용하여 한 번에 여러 데이터 추가하기
-- ITAS
INSERT INTO emp_temp(
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
)SELECT
    t1.empno,
    t1.ename,
    t1.job,
    t1.mgr,
    t1.hiredate,
    t1.sal,
    t1.comm,
    t1.deptno
FROM emp t1, salgrade t2
WHERE t1.sal BETWEEN t2.losal AND t2.hisal
AND t2.grade = 1
;
-- EMPNO ENAME      JOB      MGR HIREDATE    SAL   COMM  DEPTNO
-------- ---------- ------------ -------- ------ ------ -------
--  7876 ADAMS      CLERK   7788 87/02/21   1100             20
--  7369 SMITH      CLERK   7902 80/12/17    800             20
--  7900 JAMES      CLERK   7698 81/12/03    950             30
--3개 행 이(가) 삽입되었습니다.

-- 삽입된 행 확인하기
SELECT * FROM emp_temp;
-- EMPNO ENAME   JOB         MGR HIREDATE     SAL    COMM DEPTNO
-------- ------- --------------- ---------------- ------- ------
--  9999 홍길동  PRESIDENT       01/01/01    5000    1000     10
--  1111 홍03    PRESIDENT       01/01/01    5000    1000     10
--  2112 홍05    PRESIDENT       01/01/01    5000    1000     10
--  2113 홍06    PRESIDENT       22/03/29    5000    1000     10
--  7876 ADAMS   CLERK      7788 87/02/21    1100             20
--  7369 SMITH   CLERK      7902 80/12/17     800             20
--  7900 JAMES   CLERK      7698 81/12/03     950             30