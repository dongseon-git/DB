-- 시퀀스 삭제
--  문법) DROP sequence 시퀀스이름 ;
DROP SEQUENCE seq_dept_sequence;
--Sequence SEQ_DEPT_SEQUENCE이(가) 삭제되었습니다.

-- 삭제확인
SELECT *
FROM user_sequences
;