-- p358 Q3
-- 다음 세 가지 SQL문을 작성해 보세요
-- (1)DEPT 테이블과 같은 열과 행 구성을 가지는 DEPTSEQ 테이블을 작성해보세요

-- (2) 생성한 DEPTSEQ 테이블의 DEPTNO열에 사용할 시퀀스를 오른쪽 특성에 맞게 생성해보세요
-- # 부서번호의 시작값 : 1, 부서번호의 증가 : 1, 부서번호의 최댓값 : 99
--   부서번호의 최솟값 : 1, 부서번호 최댓값에서 생성 중단, 캐시없음

-- (3) 마지막으로 생성한 DEPTSEQ를 사용하여 오른쪽과 같이 세 개 부서를 차례대로 추가해보세요
-- # 부서이름(DNAME)  부서위치(LOC)
--   DATABASE        SEOUL
--   WEB             BUSAN
--   MOBILE          ILSAN

-- (1) 시퀀스에 사용할 테이블 생성
CREATE TABLE deptseq
    AS SELECT * FROM dept;
--Table DEPTSEQ이(가) 생성되었습니다.
SELECT * FROM deptseq;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BOSTON

-- (2) 시퀀스 생성
CREATE SEQUENCE seq_deptseq_sequence
INCREMENT BY 1
START WITH 1
MAXVALUE 99
MINVALUE 1
NOCYCLE
NOCACHE
;
--Sequence SEQ_DEPTSEQ_SEQUENCE이(가) 생성되었습니다.

-- (3) 시퀀스를 사용하여 테이블에 데이터 삽입(추가)
INSERT INTO deptseq VALUES (seq_deptseq_sequence.NEXTVAL,'DATABASE','SEOUL');
INSERT INTO deptseq VALUES (seq_deptseq_sequence.NEXTVAL,'WEB','BUSAN');
INSERT INTO deptseq VALUES (seq_deptseq_sequence.NEXTVAL,'MOBILE','ILSAN');
--1 행 이(가) 삽입되었습니다.

--데이터 삽입 확인
SELECT * FROM deptseq;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BOSTON       
--         1 DATABASE       SEOUL        
--         2 WEB            BUSAN        
--         3 MOBILE         ILSAN