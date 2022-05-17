-- 함수기반 인덱스 (Function Based INDEX)
-- 열에 산술식 같은 데이터 가공이 진행된 결과로 인덱스 생성

-- *WHERE절의 조건을 절대로 다른 형태로 가공해서는 안됩니다.
--    where pat + 1000 = 2000;
--    -> where pay = 2000 - 1000;
--    
--    where ename != 'FORD';
-- 문법)
--    CREATE INDEX 인덱스명
--    ON 테이블 이름 (pay + 1000);

-- professor 테이블에 pay -> (pay + 1000)
CREATE INDEX idx_prof_pay_fbi
ON professor(pay + 1000);