-- 다중 컬럼 서브쿼리 사용
-- PK를 여러 컬럼에 합쳐서 만들었을 경우 한꺼번에 비교하기위해 사용.
-- PK : PRIMARY KEY 의 약자 CONSTRAINT "PK_EMP" PRIMARY KEY ("EMPNO") empno유일생성

-- ex) Professor 테이블과 department 테이블을 조회하여 각 학과별로 입사일이 가장 오래된
-- 교수의 교수번호와 이름, 학과명을 출력하세요(입사일 순으로 오름차순 정렬하세요).
select * from professor;
select * from department;
SELECT
    t1.profno AS profno,
    t1.name AS prof_name,
    TO_CHAR(t1.hiredate,'YYYY/MM/DD') AS hiredate,
    t2.dname
FROM professor t1, department t2
WHERE t1.deptno = t2.deptno
AND (t1.hiredate,t1.deptno) IN (SELECT
                                    MIN(hiredate),
                                    deptno
                                FROM professor
                                GROUP BY deptno)
ORDER BY hiredate
;