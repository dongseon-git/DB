-- 다중 컬럼 서브쿼리 사용
-- PK를 여러 컬럼에 합쳐서 만들었을 경우 한꺼번에 비교하기위해 사용.
-- PK : PRIMARY KEY 의 약자 CONSTRAINT "PK_EMP" PRIMARY KEY ("EMPNO") empno유일생성

-- ex) student 테이블을 조회하여 각 학년별로 최대 몸무게를 가진 학생들의 학년과
-- 이름과 몸무게를 출력하세요.

SELECT
    name,
    grade,
    weight
FROM student
WHERE (grade,weight) IN (SELECT
                            grade,
                            MAX(weight)
                         FROM student
                         GROUP BY grade)
ORDER BY grade
;
--NAME               GRADE     WEIGHT
------------------------- ----------
--Charlie Sheen          1         81
--Wesley Snipes          2         82
--Bill Murray            3         58
--Demi Moore             4         83