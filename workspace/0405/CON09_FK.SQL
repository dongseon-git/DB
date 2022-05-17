-- 다른 테이블과 관계를 맺는 FOREIGN KEY

--FK로 참조행 삭제

--dept_fk테이블에 10번부서 삭제
DELETE FROM dept_fK
WHERE deptno = 10;
--오류 보고 - 자식테이블에서 참조된 데이터를 NULL or 삭제 해야 부모테이블에 참조데이터를 삭제 가능
--ORA-02292: 무결성 제약조건(SCOTT.EMPFK_DEPTNO_FK)이 위배되었습니다- 자식 레코드가 발견되었습니다

-- 삭제 방법
-- 1. EMP_FK테이블로 가서 dept = 10인 데이터를 삭제한다. 
--    그 다음 dept_fk테이블의 deptno = 10정보를 삭제한다.

-- parent 테이블과 자식테이블 참조데이터 삭제 처리
--열 데이터 삭제
--문법) CONSTRAINT [제약조건이름] REFERENCES 참조테이블(참조컬럼) ON DELETE CASCADE;

-- 열 데이터 NULL로 변경
--문법) CONSTRAINT [제약조건이름] REFERENCES 참조테이블(참조컬럼) ON DELETE SET NULL;