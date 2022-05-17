-- p126 Q6
-- 추가수당이 존재하지 않고 상급자가 있고 직책이 MANAGER, CLERK인 사원 중에서
-- 사원이름의 두 번째 글자가 L이 아닌 사원의 정보를 출력하는 SQL문 작성
SELECT *
FROM emp
WHERE comm IS NULL
AND mgr IS NOT NULL
AND job IN ('MANAGER', 'CLERK')
AND ename NOT LIKE '_L%'
ORDER BY empno
;
--EMPNO ENAME      JOB         MGR HIREDATE        SAL    COMM     DEPTNO
------------ ---------- ---- ---------- -------- ------- ---------- ----------
--7369  SMITH      CLERK      7902 80/12/17        800                 20
--7566  JONES      MANAGER    7839 81/04/02       2975                 20
--7876  ADAMS      CLERK      7788 87/02/21       1100                 20
--7900  JAMES      CLERK      7698 81/12/03        950                 30
--7934  MILLER     CLERK      7782 82/01/23       1300                 10