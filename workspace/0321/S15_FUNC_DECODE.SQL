-- 중첩DECODE()함수
-- (DECODE함수 안에 DECODE함수가 중첩)

-- A가 B이고 C가 D를 만족하면 '1'을 출력하고 C가 D가 아닐경우 '2'출력
-- 유형5) DECOED(A,B,DECODE(C,D,1,'2'))

-- ex) professor 테이블에서 교수의 이름과 부서번호를 출력하고 
-- 101번 부서 중에서 이름이 'Audie Murphy' 교수에게 비고란에 "BEST!"라고 출력하고 
-- 101번 학과의 'Audie Murphy' 교수 외에는 비고란에 "GOOD!"을 출력하고 
-- 101번 교수가 아닐 경우는 비고란이 공란이 되도록 출력하세요.

SELECT
    deptno,
    name,
    DECODE(deptno,'101',DECODE(name,'Audie Murphy','BEST!','GOOD!')) AS "NESTED_DECODE"
FROM professor
;
--    DEPTNO NAME                 NESTE
------------ -------------------- -----
--       101 Audie Murphy         BEST!
--       101 Angela Bassett       GOOD!
--       101 Jessica Lange        GOOD!
--       102 Winona Ryder              
--       102 Michelle Pfeiffer         
--       102 Whoopi Goldberg           
--       103 Emma Thompson             
--       103 Julia Roberts             
--       103 Sharon Stone              
--       201 Meryl Streep              
--       201 Susan Sarandon            
--       202 Nicole Kidman             
--       202 Holly Hunter              
--       203 Meg Ryan                  
--       301 Andie Macdowell           
--       301 Jodie Foster              