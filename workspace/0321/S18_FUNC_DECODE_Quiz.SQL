-- DECODE Quiz02
-- Student 테이블에서 deptno1가 101번인 학생의 이름과 연락처와 지역을 출력하세요. 
-- 단,지역번호가 02 는 "SEOUL" , 031 은 "GYEONGGI" , 051 은 "BUSAN" , 
-- 052 는 "ULSAN", 055 는 "GYEONGNAM"입니다.
SELECT
    name,
    tel,
--    INSTR(tel,')'),
--    SUBSTR(tel,1,INSTR(tel,')')-1),
    DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),'02','SEOUL'
                                         ,'031','GYEONGGI'
                                         ,'051','BUSAN'
                                         ,'052','ULSAN'
                                         ,'055','GYEONGNAM') AS "LOC"
FROM student
WHERE deptno1 = 101
;
--NAME                           TEL             LOC      
-------------------------------- --------------- ---------
--James Seo                      055)381-2158    GYEONGNAM
--Billy Crystal                  055)333-6328    GYEONGNAM
--Richard Dreyfus                02)6788-4861    SEOUL    
--Danny Devito                   055)278-3649    GYEONGNAM