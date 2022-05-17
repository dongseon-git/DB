-- DECODE()함수
-- 기준데이터를 지정한 후 해당 데이터값에 따라 다른 결과값을 내보낸다.

-- A가B인 경우 1, A가C인경우2, 둘 다 아닌경우 3
-- 유형3) DECOED(A,B,'1',C,'2','3')
--       DECOED(A,B,'1'
--               ,C,'2'
--                 ,'3')

-- ex) professor 테이블에서 교수의 이름과 학과명을 출력하되
-- 학과번호가 101이면 'Computer Engineeriong',
-- 102이면 'Multimedia Engineering',
-- 103이면 'Software Engineering' 나머지는 'ETC'로 출력하시오
SELECT
    deptno,
    name,
    DECODE(deptno,101,'Computer Engineeriong'
                 ,102,'Multimedia Engineering'
                 ,103,'Software Engineering'
                     ,'ETC') AS DNAME
FROM professor
;
--    DEPTNO NAME                 DNAME                 
------------ -------------------- ----------------------
--       101 Audie Murphy         Computer Engineeriong 
--       101 Angela Bassett       Computer Engineeriong 
--       101 Jessica Lange        Computer Engineeriong 
--       102 Winona Ryder         Multimedia Engineering
--       102 Michelle Pfeiffer    Multimedia Engineering
--       102 Whoopi Goldberg      Multimedia Engineering
--       103 Emma Thompson        Software Engineering  
--       103 Julia Roberts        Software Engineering  
--       103 Sharon Stone         Software Engineering  
--       201 Meryl Streep         ETC                   
--       201 Susan Sarandon       ETC                   
--       202 Nicole Kidman        ETC                   
--       202 Holly Hunter         ETC                   
--       203 Meg Ryan             ETC                   
--       301 Andie Macdowell      ETC                   
--       301 Jodie Foster         ETC        