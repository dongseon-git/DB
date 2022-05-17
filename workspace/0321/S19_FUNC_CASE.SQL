-- CASE문
-- DECODE문과 마찬가지로 특정 조건에 따라 반환할 데이터를 설정할 때 사용
-- 조건과 결과가 '=' 인 경우
-- CASE (조건) WHEN 결과1 THEN '출력1'
--            WHEN 결과2 THEN '출력2'
--            WHEN 결과3 THEN '출력3'
--            ELSE 출력4
--    END AS "컬럼명"

-- ex) Student 테이블에서 deptno1가 201번인 학생의 이름과 연락처와 지역을 출력하세요. 
-- 단,지역번호가 02 는 "SEOUL" , 031 은 "GYEONGGI" , 051 은 "BUSAN" , 
-- 052 는 "ULSAN", 055 는 "GYEONGNAM"입니다.
SELECT
    name,
    tel,
    CASE (SUBSTR(tel,1,INSTR(tel,')')-1)) WHEN '02' THEN 'SEOUL'
                                          WHEN '031' THEN 'GYEONGGI'
                                          WHEN '051' THEN 'BUSAN'
                                          WHEN '052' THEN 'ULSAN'
                                          WHEN '055' THEN 'GYEONGNAM'
                                          ELSE 'ETC'
    END AS "LOC02",
    
    DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),'02','SEOUL'
                                         ,'031','GYEONGGI'
                                         ,'051','BUSAN'
                                         ,'052','ULSAN'
                                         ,'055','GYEONGNAM'
                                               ,'ETC') AS "LOC"
FROM student
WHERE deptno1 = 201
;