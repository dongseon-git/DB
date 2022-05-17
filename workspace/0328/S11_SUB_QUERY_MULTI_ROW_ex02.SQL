-- 다중행 SUB QUERY 연습문제
-- ex) student 테이블을 조회하여 전체 학생 중에서 체중이 2학년 학생들의 체중에서
-- 가장 적게 나가는 학생보다 몸무게가 적은 학생의 이름과 학년과 몸무게를 출력하세요.
-- >ANY 서브쿼리 결과 중에서 최소값을 반환합니다. >ANY(10,20,30) : >10 최소값보다 큰
-- <ANY 서브쿼리 결과 중에서 최대값을 반환합니다. <ANY(10,20,30) : <30 최대값보다 작은
-- <ALL 서브쿼리 결과 중에서 최소값을 반환합니다. <ALL(10,20,30) : <10 최소값보다 작은
-- >ALL 서브쿼리 결과 중에서 최대값을 반환합니다. >ALL(10,20,30) : >30 최대값보다 큰

SELECT 
    name,
    grade,
    weight
FROM student
WHERE weight < ALL (SELECT weight
                    FROM student
                    WHERE grade = 2)
;
--NAME              GRADE     WEIGHT
------------------------- ----------
--Billy Crystal         3         48
--Danny Devito          1         48
--Nicholas Cage         3         42