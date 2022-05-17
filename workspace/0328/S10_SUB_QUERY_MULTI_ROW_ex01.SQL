-- ex) EMP2 테이블을 사용하여 전체 직원 중 'Section head'직급의 최소 연봉자보다
-- 연봉이 높은 사람의 이름과 직급, 연봉을 출력하세요
-- 단, 연봉 출력 형식은 아래와 같이 천 단위 구분 기호화 $ 표시를 하세요.
--select * from emp2;
SELECT
    t1.name,
    t1.position,
    TO_CHAR(t1.pay,'$999,999,999') AS salary
FROM emp2 t1
WHERE t1.pay > (SELECT MIN(pay)
                FROM emp2
                WHERE position = 'Section head')
ORDER BY t1.pay desc
;
--NAME              POSITION                SALARY       
------------------- ----------------------- -------------
--Kurt Russell      Boss                     $100,000,000
--Kevin Bacon       Department head           $75,000,000
--AL Pacino         Department head           $72,000,000
--Val Kilmer        Department head           $68,000,000
--Tommy Lee Jones   Deputy department head    $60,000,000
--Gene Hackman      Section head              $56,000,000
--Hugh Grant        Section head              $51,000,000
--Woody Harrelson   Section head              $50,000,000