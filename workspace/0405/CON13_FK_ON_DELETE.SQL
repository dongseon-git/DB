-- parent 테이블과 자식테이블 참조데이터 삭제 처리
--열 데이터 삭제 - 변경 및 삭제시 ON DELETE SET NULL 옵션 추가
--문법) CONSTRAINT [제약조건이름] REFERENCES 참조테이블(참조컬럼) ON DELETE SET NULL;

-- c_test1테이블 ctest1_deptno_fk 제약조건 DROP : 전 file실습에서 fk생성했음
ALTER TABLE c_test1
DROP CONSTRAINT ctest1_deptno_fk;
--Table C_TEST1이(가) 변경되었습니다.

-- c_test1테이블에 ON DELETE SET NULL 옵션의 FK제약조건 입력
ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY (deptno)
REFERENCES c_test2(no)
ON DELETE SET NULL;
--Table C_TEST1이(가) 변경되었습니다.

-- 데이터 확인
SELECT * FROM c_test1;
SELECT * FROM c_test2;
--        NO NAME           DEPTNO
------------ ---------- ----------
--         2 banana             20
--         3 cherry             30
--
--
--        NO NAME      
------------ ----------
--        20 BBB       
--        30 CCC   

-- ON DELETE SET NULL 테스트
DELETE FROM c_test2 WHERE NO = 20;
--1 행 이(가) 삭제되었습니다.

-- 삭제 후 데이터 확인
SELECT * FROM c_test1;
-- c_test1테이블의 deptno 컬럼 20 데이터가 NULL로 변경
--        NO NAME           DEPTNO
------------ ---------- ----------
--         2 banana               
--         3 cherry             30