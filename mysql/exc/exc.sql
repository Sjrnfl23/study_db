

create table cafe(

cafename varchar(100),
tablenumbers int,
chairnumbers int,
address varchar(100),
area varchar(100),
chief_name varchar(100)
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
select * from cafe;

select* from cafe where seq=4 AND  area=6;

select * from cafe where seq>=3;

select * from cafe where cafename like "%기";
-- 데이터 삭제