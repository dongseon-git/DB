-- DECODE()함수
-- 기준데이터를 지정한 후 해당 데이터값에 따라 다른 결과값을 내보낸다.
-- JAVA언어 등에서 사용중인 분기문 IF문 오라클로 가져온 함수
-- DECODE()함수는 오라클 전용 함수. 다른곳은 switch문 사용

-- A가B이면 '1' 출력
-- 유형1) DECOED(A,B,'1',NULL) (단, 마지막 NULL은 생략가능) 

-- ex) professor 테이블에서 학과번호와 교수명, 학과명을 출력하되 deptno가 101번인
--   교수만 학과명을 'Computer Engineering'으로 출력하고 101이 아닌 교수들은
--   학과명에 아무것도 출력하지 마세요.
--DESC professor;
SELECT
    deptno,
    name,
    DECODE(deptno,101,'Computer Engineeriong',NULL) AS DNAME
-- NULL은 대,소문자 구분하지않음.
FROM professor
;
--    DEPTNO NAME                 DNAME                
------------ -------------------- ---------------------
--       101 Audie Murphy         Computer Engineeriong
--       101 Angela Bassett       Computer Engineeriong
--       101 Jessica Lange        Computer Engineeriong
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
