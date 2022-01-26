

CREATE TABLE test (

seq INT UNSIGNED NOT NULL AUTO_INCREMENT ,
name VARCHAR(45) NULL ,
PRIMARY KEY (seq)
);


insert into cafe(
  seq
  , cafename
  , tablenumbers
  , chairnumbers
  , address
  , area
  , chief_name
) values (
  10
  , '엔젤리너스'
  , 23
  , 36
  , '서울시 강남구'
  , 10
  , '인병준'
); 

-- varchar는 '' 작은따옴표 필수
-- int 는 사용 안해도 됨
-- 콤마는 앞쪽을 선호 : 이건 호불호 갈림

-- 데이터 조회
-- select * from cafe;

-- select* from cafe where seq=4 AND  area=6;

-- select * from cafe where seq>=3;

-- select * from cafe where cafename like "%기";
-- ubique,primary key,forgien key : 유일한 데이터
-- pk 종복되는 데이터 불허
-- uq 중복되는 데이터 불허
-- b 바이너리 파일 저장
-- un 양수만
-- zf zerofill: 5.7 (5,2) -> 000.5.7
-- AI : AUTO INCREMENT: 자동증가
-- g : auto increment 의 다른 형태
insert into test(
name
)values(
'순형'

);


-- 컬럼 추가
alter table test add tel varchar(50);
-- 컬럼 추가
alter table test drop tel;
-- 컬럼 타입 변경
alter table test modify tel int;
-- 컬럼 이름 변경 
alter table test change tel tele int;
	-- 테이블 수정 
update test set
	name = 'Andrew',tel='222'
where seq=1;
-- 테이블 삭제
delete from test
where 1=1
and seq=3;

-- 전체 데이터 삭제
truncate test;

select * from test;	
