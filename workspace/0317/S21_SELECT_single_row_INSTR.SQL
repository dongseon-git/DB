-- INSTR()함수
-- 문자열 데이터 안에 특정 문자나 문자열이 어디에 포함되어 있는지를 알고자 할 때 사용.
-- INSTR('문자열'또는 컬럼, 찾는 글자, 시작위치(기본값:1), 몇번째인지(기본값:1) );
SELECT 
    INSTR('HELLO, ORACLE', 'L'), -- 3번째 위치해 있음
    INSTR('HELLO, ORACLE', 'L', 5), -- 12번째 위치해 있음
    INSTR('HELLO, ORACLE', 'L', 2, 2) -- 2번째 자리부터 시작해서 L이 2번째 있는 위치
FROM dual
;
--INSTR('HELLO,ORACLE','L') INSTR('HELLO,ORACLE','L',5) INSTR('HELLO,ORACLE','L',2,2)
--3	                        12	                        4