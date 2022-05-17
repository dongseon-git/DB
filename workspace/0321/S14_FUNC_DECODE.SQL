-- 중첩DECODE()함수
-- (DECODE함수 안에 DECODE함수가 중첩)

-- A가 B이고 C가 D를 만족하면 '1'을 출력하고 C가 D가 아닐경우 NULL출력
-- 유형4) DECOED(A,B,DECODE(C,D,1,NULL))

-- ex) professor테이블에서 교수의 이름과 부서번호를 출력하고
-- 101번 부서 중에서 이름이 'Audie Murphy'교수에게 'BEST!'라고 출력하고
-- 101번 부서중에서 이름이 'Audie Murphy'교수가 아닌 나머지에는 NULL값을 출력하세요.
-- 만약 101번 외 다른 학과에 'Audie Murphy'교수가 있어도 'BEST!'가 출력되면 안됩니다.

-- if(deptno == 101){
--    if(name == 'Audie Murphy'){
--        'BEST!'
--    }else{
--        NULL
--    }
-- }
SELECT
    deptno,
    name,
    DECODE(deptno,'101',DECODE(name,'Audie Murphy','BEST!')) AS "NESTED_DECODE"
FROM professor
;
--    DEPTNO NAME                 NESTE
------------ -------------------- -----
--       101 Audie Murphy         BEST!
--       101 Angela Bassett            
--       101 Jessica Lange             
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
