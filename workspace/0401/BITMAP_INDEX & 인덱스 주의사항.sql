BITMAP INDEX
데이터의 값의 종류가 적고 동일한 데이터가 많을 경우 주로 BITMAP인덱스를 사용
데이터의 변경량이 적거나 없어야 한다. ( OLAP환경에서 주로 사용. )

어떤 데이터가 어디 있다라는 지도(Map)를 bit로 표시
즉 어떤 데이터가 존재하는 곳은 1로 표시하고

 문법)
    CREATE BITMAP INDEX 인덱스명
    ON 테이블명 (컬럼명1)
    
인덱스의 주의사항
1. DML에 취약하다.
    DML이 발생하는 테이블은 인덱스를 최소한으로 작게 만들어야 합니다.
    (INDEX는 SORT되어 관리되기 때문, 테이블에 데이터가 입력되면, 인덱스에도 추가되어야 한다.)
2. DELETE
    INDEX에 DELETE는 없고 사용 안함으로 표시
    (인덱스 REBUILD)
3. UPDATE
    UPDATE라는 개념이 인덱스에는 없다.
    (DELETE이후 INSERT수행, 부하가 가장 심하다.)

