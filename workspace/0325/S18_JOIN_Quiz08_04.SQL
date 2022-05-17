-- p240 Q4
-- 다음과 같이 모든 부서 정보, 사원정보, 급여등급정보, 각 사원의 직속 상관의 정보를 
-- 부서번호, 사원번호 순서로 정렬하여 출력해보세요.

-- ORACLE JOIN
SELECT
    t2.deptno,
    t2.dname,
    t1.empno,
    t1.ename,
    t1.mgr,
    t1.sal,
    t1.deptno,
    t3.losal,
    t3.hisal,
    t3.grade,
    t4.empno AS mgr_empno,
    t4.ename AS mgr_ename
FROM emp t1, dept t2, salgrade t3 ,emp t4
WHERE t1.deptno(+) = t2.deptno
--AND t1.sal BETWEEN t3.losal(+) AND t3.hisal(+)
AND   t1.sal >= t3.losal(+)
AND   t1.sal <= t3.hisal(+)
AND   t1.mgr = t4.empno(+)
ORDER BY t2.deptno, t1.empno
;

-- ANSI JOIN
SELECT
    t2.deptno,
    t2.dname,
    t1.empno,
    t1.ename,
    t1.mgr,
    t1.sal,
    t1.deptno,
    t3.losal,
    t3.hisal,
    t3.grade,
    t4.empno AS mgr_empno,
    t4.ename AS mgr_ename
FROM emp t1 RIGHT OUTER JOIN dept t2
ON t1.deptno = t2.deptno
LEFT OUTER JOIN salgrade t3
ON t1.sal BETWEEN t3.losal AND t3.hisal
--ON   t1.sal >= t3.losal
--AND   t1.sal <= t3.hisal
LEFT OUTER JOIN  emp t4
ON   t1.mgr = t4.empno
ORDER BY t2.deptno, t1.empno
;
--DEPTNO DNAME       EMPNO ENAME    MGR   SAL  DEPTNO  LOSAL  HISAL  GRADE  MGR_EMPNO MGR_ENAME 
-------- ----------------- ------------ ----- ------- ------ ------ ------ ---------- ----------
--    10 ACCOUNTING   7782 CLARK   7839  2450      10   2001   3000      4       7839 KING      
--    10 ACCOUNTING   7839 KING          5000      10   3001   9999      5                      
--    10 ACCOUNTING   7934 MILLER  7782  1300      10   1201   1400      2       7782 CLARK     
--    20 RESEARCH     7369 SMITH   7902   800      20    700   1200      1       7902 FORD      
--    20 RESEARCH     7566 JONES   7839  2975      20   2001   3000      4       7839 KING      
--    20 RESEARCH     7788 SCOTT   7566  3000      20   2001   3000      4       7566 JONES     
--    20 RESEARCH     7876 ADAMS   7788  1100      20    700   1200      1       7788 SCOTT     
--    20 RESEARCH     7902 FORD    7566  3000      20   2001   3000      4       7566 JONES     
--    30 SALES        7499 ALLEN   7698  1600      30   1401   2000      3       7698 BLAKE     
--    30 SALES        7521 WARD    7698  1250      30   1201   1400      2       7698 BLAKE     
--    30 SALES        7654 MARTIN  7698  1250      30   1201   1400      2       7698 BLAKE     
--    30 SALES        7698 BLAKE   7839  2850      30   2001   3000      4       7839 KING      
--    30 SALES        7844 TURNER  7698  1500      30   1401   2000      3       7698 BLAKE     
--    30 SALES        7900 JAMES   7698   950      30    700   1200      1       7698 BLAKE     
--    40 OPERATIONS 