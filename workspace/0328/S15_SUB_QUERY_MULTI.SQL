-- 상호 연관 SUB QUERY
-- Main Query값을 Sub Query에 주고 Sub Query 수행한 후 그 결과를 다시 Main Query로 반환
-- SELECT select_list
-- FROM table or view
-- WHERE 조건 연산자 ( SELECT select_list
--                   FROM table
--                   WHERE 조건);

-- Emp2 테이블을 조회해서 직원 들 중에서 자신의 직급의 평균연봉과 같거나 많이 받는 
-- 사람들의 이름과 직급, 현재 연봉을 출력하세요.
--select * from emp2;
SELECT
    t1.name,
    t1.position,
    TO_CHAR(t1.pay,'$999,999,999') AS salary
FROM emp2 t1
WHERE t1.pay >= (SELECT AVG(NVL(pay,0))
                 FROM emp2 t2
                 WHERE t1.position = t2.position)
;
--NAME              POSITION                       SALARY       
------------------- ------------------------------ -------------
--Kurt Russell      Boss                            $100,000,000
--AL Pacino         Department head                  $72,000,000
--Tommy Lee Jones   Deputy department head           $60,000,000
--Gene Hackman      Section head                     $56,000,000
--Kevin Bacon       Department head                  $75,000,000
--Keanu Reeves      Deputy Section chief             $35,000,000