-- 이미 생성한 테이블에 제약조건 지정
--  TABLE_NOTNULL 테이블에 전화번호(tel)컬럼에 NOT NULL 추가
-- 문법)
--  ALTER TABLE 테이블 이름
--  MODIFY (컬럼 제약조건)

ALTER TABLE table_notnull
MODIFY (tel NOT NULL);
--오류 보고 - 기존 널값이 삽입 되어 있기 때문에 NOT NULL로 바꿀 수 없다.
--ORA-02296: (SCOTT.) 사용으로 설정 불가 - 널 값이 발견되었습니다.
--02296. 00000 - "cannot enable (%s.%s) - null values found"

SELECT * FROM table_notnull;
--LOGIN_ID             LOGIN_PWD            TEL                 
---------------------- -------------------- --------------------
--TEST_01              1234                                     
-- table_notnull 테이블에 tel컬럼 데이터 업데이트
UPDATE table_notnull
   SET tel = '010-1234-5678'
WHERE login_id = 'TEST_01'
;
--1 행 이(가) 업데이트되었습니다.
COMMIT;
--커밋 완료.

--업데이트후 확인
SELECT * FROM table_notnull;
--LOGIN_ID             LOGIN_PWD            TEL                 
---------------------- -------------------- --------------------
--TEST_01              1234                 010-1234-5678

-- 다시 NOT NULL지정
ALTER TABLE table_notnull
MODIFY (tel NOT NULL);
--Table TABLE_NOTNULL이(가) 변경되었습니다.