CREATE TABLE bike (
  id int NOT NULL auto_increment,
  kind varchar(20) NOT NULL, -- 상품이름
  price int NOT NULL,
  image varchar(20) NOT NULL, -- 상품이미지
  year char(4) NOT NULL,   -- 생성년도/고정
  spec varchar(100), -- 상품상세정보
  readcount int DEFAULT 0,
  PRIMARY KEY (id)
);

insert into bike(kind,price,image,year,spec,readcount) 
values ('뮤트',68250,'bike1.jpg','2017','접이식자전거 미켈란 20인치/26인치 MTB형 21단',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('데오레',478660,'bike2.jpg','2017','다이아몬드백 락630 데오레 MTB자전거',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('로얄베이비',150000,'bike3.jpg','2016','스페이스넘버원 12/16/18 어린이자전거',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('아벤톤',149000,'bike4.jpg','2017','XD204 24(61cm)MTB자전거 디스크브레이크 21단',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('삼천리',119000,'bike5.jpg','2016','튼튼한 아동용/학생용 자전거 20인치(51cm)(8~12세용)',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('엘파마',960000,'bike6.jpg','2019','엠비에스코퍼레이션 엘파마 페이스 데오레 MTB 자전거',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('Eurobike',975080,'bike7.jpg','2021','산악자전거 경량 알루미늄 MBT자전거 29인치',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('CAMOU',275000,'bike8.jpg','2022','Folding Mountain MiniVelo 접이식 미니벨로20인치 MTB 자이크 카모',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('트위기',287000,'bike9.jpg','2020','유럽 클래식자전거 접이식 미니벨로 실버',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('바이맥스',149000,'bike10.jpg','2021','샤프리 접이식 자전거',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('티티카카 플라이트 F7 ',328000,'bike11.jpg','2021','알루미늄 접이식프레임, 7단 원터치 변속레버, 3단 폴딩 접이식 자전거, 균형잡힌 미니벨로',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('오투휠스 몬스터H',255000,'bike12.jpg','2021','입문용 하이브리드 자전거 알루미늄 700C 21단 반조립 기준',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('리퍼블릭',322000,'bike13.jpg','2021','클래식 어반 하이브리드 오토센서 제너레이터 3 Color',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('자이언트',450000,'bike14.jpg','2022','에스케이프 3 디스크 시마노 21단 하이브리드 자전거',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('알톤',337000,'bike15.jpg','2021','알톤 탑원 입문용 하이브리드 자전거 알루미늄 700C 21단 출퇴근 99%조립',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('삼천리',292000,'bike16.jpg','2021','토러스21 700C 하이브리드 도로형자전거 / 사은품증정',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('알톤',309000,'bike17.jpg','2021','썸탈 하이브리드 자전거 입문용 가성비 24단 출퇴근자전거',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('삼천리',220000,'bike18.jpg','2021','레스포 700c 펠릭스 - 입문용 하이브리드 자전거',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('벨로라인',328920,'bike19.jpg','2018','픽시 루시 레베',0);
insert into bike(kind,price,image,year,spec,readcount) 
values ('소닉바이크',259000,'bike20.jpg','2019','벨로라인 클랑맨 시마노7단 하이브리드 자전거 11.5kg 클래식 감성자전거',0);


select kind, price from bike;
select*from bike;

CREATE TABLE bikeuser (
  idx int NOT NULL auto_increment,
  userid varchar(20) NOT NULL,
  password varchar(20) NOT NULL,
  name varchar(20) NOT NULL, 
  email varchar(40) ,   
  roll varchar(10) NOT NULL,
  b_cart varchar(20) NOT null -- 유저가 구매한 상품, 나중에 alter로 컬럼추가
  PRIMARY KEY (idx),

);

insert into bikeuser (userid,password,name,email, roll)
values ('nayon11','1111','나연','dkas@naver.com','고객');
insert into bikeuser (userid,password,name,email, roll)
values ('gewyon11','1211','소연','dkddas@gmail.com','고객');
insert into bikeuser (userid,password,name,email, roll)
values ('nads1','1121','다연','dkaaas@naver.com','고객');
insert into bikeuser (userid,password,name,email, roll)
values ('qwgfdb','1112','후연','dkaqs@naver.com','고객');
insert into bikeuser (userid,password,name,email, roll)
values ('sbse1','2222','가연','dkwfas@naver.com','관리자');
insert into bikeuser (userid,password,name,email, roll)
values ('sthee1','2111','라연','asddkas@naver.com','고객');
insert into bikeuser (userid,password,name,email, roll)
values ('stadee1','2111','라연','asddkasdnaver.com','고객'); 
insert into bikeuser (userid,password,name,email, roll)
values ('admin','1111','왕','dksrhkdtls@naver.com','관리자'); 
select*from bikeuser;
insert into bikeuser (userid,password,name,email, roll)
values ('test','1111','김나라','dks@naver.com','고객'); 

select*from bikeuser;

alter table bikeuser add  b_cart varchar(20) NOT null;

alter table bikeuser drop b_cart; -- c_cart 삭제

select*from bike_comment;




drop table bike_comment;

create table bike_comment(
	idx int not null auto_increment,
	name varchar(30) not null,		
	password varchar(10) not null,		
	content varchar(2000) not null,		
	primary key(idx),
	foreign key(idx) references bike(id)
);

insert into bike_comment(idx,name,password,content)
values (1,'수현','1111','좋네요');
insert into bike_comment(idx,name,password,content)
values (2,'호현','1234','네고있나요?');
insert into bike_comment(idx,name,password,content)
values (3,'강현','1234','AS기간이 어떻게 되죠?');

select*from bike_comment;







select*from bikeuser;



