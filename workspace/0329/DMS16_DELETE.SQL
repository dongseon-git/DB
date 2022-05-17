-- DELETE : 테이블에 있는 데이터 삭제하기

-- 서브쿼리를 사용하여 데이터 삭제 ( IN연산자 )

-- 삭제할 데이터 확인 
SELECT
    t1.empno
FROM emp_temp2 t1, salgrade t2
WHERE t1.sal BETWEEN t2.losal AND t2.hisal
AND t2.grade = 3
AND t1.deptno = 30
;
--     EMPNO
------------
--      7499
--      7844

-- 서브쿼리를 사용하여 데이터 삭제
DELETE FROM emp_temp2
WHERE empno IN (SELECT t1.empno
                FROM emp_temp2 t1, salgrade t2
                WHERE t1.sal BETWEEN t2.losal AND t2.hisal
                AND t2.grade = 3
                AND t1.deptno = 30)
;
--2개 행 이(가) 삭제되었습니다.

--삭제 후 데이터 확인
SELECT * FROM emp_temp2;
--EMPNO ENAME    JOB         MGR HIREDATE    SAL   COMM  DEPTNO
------- -------- --------- ----- -------- ------ ------ -------
-- 7876 ADAMS    CLERK      7788 87/02/21   1100             20
-- 7369 SMITH    CLERK      7902 80/12/17    800             20
-- 7521 WARD     SALESMAN   7698 81/02/22   1250    500      30
-- 7654 MARTIN   SALESMAN   7698 81/09/28   1250   1400      30
-- 7788 SCOTT    ANALYST    7566 87/04/19   3000             20
-- 7839 KING     PRESIDENT       81/11/17   5000             10
-- 7900 JAMES    CLERK      7698 81/12/03    950             30
-- 7902 FORD     ANALYST    7566 81/12/03   3000             20
-- 7934 MILLER   CLERK      7782 82/01/23   1300             10