-- Scalar Sub Query테스트
-- 1) 2건 이상의 데이터 반환을 요청하는 경우 - 에러
-- 2) 2개 이상의 컬럼을 조회 할 경우 - 에러

-- t3, t4테이블 생성
DROP TABLE t3; -- t3 테이블 제거
CREATE TABLE t3( -- t3 테이블 생성
    no NUMBER,
    name VARCHAR2(10),
    deptno NUMBER
);

INSERT INTO t3 VALUES(1,'AAA',100);
INSERT INTO t3 VALUES(2,'BBB',200);
INSERT INTO t3 VALUES(3,'CCC',300);

COMMIT;

DROP TABLE t4; -- t4 테이블 제거
CREATE TABLE t4( -- t4 테이블 생성
    deptno NUMBER,
    dname VARCHAR2(10)
);

INSERT INTO t4 VALUES(100,'DDD');
INSERT INTO t4 VALUES(100,'EEE'); -- error
INSERT INTO t4 VALUES(200,'FFF');
INSERT INTO t4 VALUES(300,'GGG');

COMMIT;

SELECT * FROM t3;
SELECT * FROM t4;