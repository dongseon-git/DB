-- Q4 PC_BOARD테이블을 목록을 조회하는 TOP-N(PAGING) 처리 SQL을 작성하세요. 
--    21~30까지(100건 데이터를 입력하세요), 수정일 역순으로 정렬 출력 하세요.

-- 테이블 확인
SELECT * FROM pc_board;
DESC pc_board;
--이름       널?       유형            
---------- -------- ------------- 
--SEQ      NOT NULL NUMBER(7)     
--TITLE    NOT NULL VARCHAR2(200) 
--CONTENTS          CLOB          
--READ_CNT          NUMBER(6)     
--REG_DT            DATE          
--REG_ID            VARCHAR2(20)  
--MOD_DT            DATE          
--MOD_ID            VARCHAR2(20)

--임의 데이터 입력 (100건) PL/SQL 프로시저
BEGIN
    FOR i IN 1..100 LOOP
        INSERT INTO pc_board VALUES ( 
            i, --순번
            DBMS_RANDOM.STRING('A',5), --제목
            DBMS_RANDOM.STRING('A',10), --내용
            0, --조회수
            SYSDATE - i, --등록일
            DBMS_RANDOM.STRING('A',4), -- 등록자
            (SYSDATE - i) +1 , --수정일
            DBMS_RANDOM.STRING('A',4) -- 수정자
        );
    END LOOP;
    COMMIT;
END;
/
--PL/SQL 프로시저가 성공적으로 완료되었습니다.

-- 데이터 입력 후 테이블 확인
SELECT * FROM pc_board;

-- 21~30까지 수정일 역순으로 정렬 출력
COL rnum FOR A4
COL seq FOR A4
COL title FOR A6
COL contents FOR A11
COL read_cnt FOR A8
COL reg_dt FOR A10
COL reg_id FOR A7
COL mod_dt FOR A10
COL mod_id FOR A7
SELECT
    A.rnum,
    A.seq,
    A.title,
    A.contents,
    A.read_cnt,
    TO_CHAR(A.reg_dt,'YYYY/MM/DD') AS reg_dt,
    A.reg_id,
    TO_CHAR(A.mod_dt,'YYYY/MM/DD') AS mod_dt,
    A.mod_id
FROM ( SELECT ROWNUM AS rnum, t1.*
       FROM ( SELECT *
              FROM pc_board
              ORDER BY mod_dt DESC 
       ) t1
       WHERE ROWNUM <= 30
)A
WHERE rnum >= 21
;
--RNUM  SEQ TITLE  CONTENTS    READ_CNT REG_DT     REG_ID  MOD_DT     MOD_ID 
------ ---- ------ ----------- -------- ---------- ------- ---------- -------
--  21   21 iTKMN  KKPnFGeuqi         0 2022/03/15 xGmc    2022/03/16 NJyV   
--  22   22 apMqc  ghhavPhPnP         0 2022/03/14 jgCA    2022/03/15 Hvme   
--  23   23 dSRRZ  xeInkJwcBr         0 2022/03/13 gGMI    2022/03/14 XfBo   
--  24   24 rpjVn  IqtKXnxbbL         0 2022/03/12 tiGM    2022/03/13 tGeQ   
--  25   25 qULEL  TOMYBeJRxn         0 2022/03/11 JRfH    2022/03/12 TCmF   
--  26   26 YTLXG  xLNNfvtjkW         0 2022/03/10 XEMh    2022/03/11 LBog   
--  27   27 CSMCx  iNeNTUqTCf         0 2022/03/09 PYOk    2022/03/10 JfjL   
--  28   28 bZExX  VvSxrrkzPL         0 2022/03/08 tCTp    2022/03/09 rfNV   
--  29   29 pagAm  qRsEbotEge         0 2022/03/07 NmPy    2022/03/08 cXKa   
--  30   30 gbEKF  kfRSSPqnLm         0 2022/03/06 qjNU    2022/03/07 CGFk  