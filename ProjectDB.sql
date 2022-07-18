--유저테이블
create table marketuser(
    us_num number,
    us_id varchar2(30) primary key,
    us_pass varchar2(40) not null,
    us_name varchar2(20) not null,
    us_nickname varchar2(20) unique,
    us_birth char(8),
    us_email varchar2(30),
    us_gender varchar2(8), --남성(male), 여성(female)
    us_address varchar2(100) not null,
    us_phone char(13) not null,
    us_joindate date default sysdate,
    us_grade number(1) default 1 -- 관리자(0), 일반회원(1)
);

--마이페이지
create table mypage(
    my_id varchar2(30),
    my_image varchar2(500),
    my_intro varchar2(1000),
    my_nickname varchar2(20) unique,
    constraint fk_my_id foreign key (my_id) references marketuser (us_id)
    on delete cascade
);

--구매내역
create table buyboard(
    buy_id varchar2(30),
    buy_title varchar2(100),
    buy_price number,
    buy_seller varchar2(30),
    buy_buydate default sysdate,
    constraint fk_buy_id foreign key (buy_id) references mypage (my_nickname)
    on delete cascade
);

--판매내역
create table sellboard(
    sel_id varchar2(30),
    sel_title varchar2(100),
    sel_price number,
    sel_buyer varchar2(30),
    sel_selldate default sysdate,
    constraint fk_sell_id foreign key (sel_id) references mypage (my_nickname)
    on delete cascade
);

--찜목록
create table heartboard(
    he_id varchar2(30),
    he_title varchar2(100),
    he_price number,
    he_seller varchar2(30),
    constraint fk_heart_id foreign key (he_id) references mypage (my_nickname)
    on delete cascade
);

--상품 테이블
create table marketboard(
    bo_num number primary key,
    bo_title varchar2(100) not null,
    bo_nickname varchar2(20) unique,
    bo_price number not null,
    bo_content varchar(2000) not null,
    bo_image varchar2(500),
    bo_regdate date default sysdate,
    bo_count number default 0,
    bo_heart number,
    bo_heartcount number,
    bo_category varchar2(50),
    bo_address varchar2(100) not null,
    constraint fk_board_id foreign key (bo_num) references marketuser (us_id)
    on delete cascade
);

--고객센터
create table center(
    ce_num number primary key,
    ce_pass varchar(40),
    ce_nickname varchar2(20),
    ce_title varchar2(100),
    ce_content varchar2(2000),
    ce_id varchar2(30)
);