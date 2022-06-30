-- 유저 테이블
create table marketuser(
  num number,
  id varchar2(30) primary key,
  pass varchar2(40) not null,
  uname varchar2(20) not null,
  nickname varchar2(20) UNIQUE,
  birth char(8), -- 생년월일 (YYYYMMDD)
  email varchar2(30) UNIQUE,
  address varchar2(100) not null,
  phone char(13) not null,
  profile varchar2(500), -- 프로필 사진
  udate date -- 가입일자
);
insert into marketuser(num,id,pass,uname,nickname,birth,email,address,phone,udate) 
    values(user_seq.nextval,'admin','1234','관리자','관리자1','19940430','ugiugi94@naver.com','수원시 권선구','01031734790',sysdate);
select * from marketuser;
-- 상품 등록 테이블
create table marketboard(
    num number,
    id varchar2(30) primary key,
    pass varchar2(40) not null,
    name varchar2(20) not null,
    title varchar2(100) not null,
    price number not null,
    content varchar2(2000) not null,
    image varchar2(500), -- 상품 사진
    bdate date, -- 글 작성 일자
    count number,
    heart number -- 찜하기
);
-- 고객센터 테이블
create table customercenter(
    num number,
    id varchar2(30) primary key,
    pass varchar2(40) not null,
    name varchar2(20) not null,
    title varchar2(100) not null,
    content varchar2(2000) not null
);
-- 유저 시퀀스
create sequence user_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- 상품 시퀀스
create sequence board_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- 고객센터 시퀀스
create sequence cus_seq
START with 1 INCREMENT by 1 MINVALUE 1;

-- 댓글 테이블
create table reply(
   num number,  -- 글 번호
   name varchar2(20) not null,
   pass varchar2(40) not null,
   cdate date not null, -- 댓글 단 시간
   reply varchar2(1000) not null,
   profile varchar2(500)
);

-- 채팅 테이블
create table chat(
   num number,
   id varchar2(30) primary key,
   name varchar2(20) not null,
   chat varchar2(1000) not null,
   profile varchar2(500),
   chdate date not null,
   image varchar2(500)
);