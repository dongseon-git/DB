-- DECODE Quiz01
--Student 테이블을 사용하여 제 1전공 (deptno1)이 101번인 학과 학생들의 
--이름과 주민번호, 성별을 출력하되 성별은 주민번호(jumin) 컬럼을 이용하여 
--7번째 숫자가 1일 경우 "남자" ,2일 경우 "여자" 로 출력하세요.

--if(SUBSTR(jumin,7,1) == 1 ){
--    'man'
--    if(SUBSTR(jumin,7,1) == 2){
--    'woman'
--    }
--}
SELECT
    name,
    jumin,
    SUBSTR(jumin,7,1) AS "1 or 2",
    DECODE(SUBSTR(jumin,7,1),'1','MAN','2','WOMAN') AS "GENDER"
FROM student
WHERE deptno1 = 101
;
--NAME                           JUMIN         1 GENDE
-------------------------------- ------------- - -----
--James Seo                      7510231901813 1 MAN  
--Billy Crystal                  7601232186327 2 WOMAN
--Richard Dreyfus                7711291186223 1 MAN  
--Danny Devito                   7808192157498 2 WOMAN