
drop table marketboard;
drop table marketuser;
drop table mypage;
drop table buyboard;
drop table sellboard;
drop table heartboard;
drop table center;

--�������̺�
create table marketuser(
    us_num number,
    us_id varchar2(30) primary key,
    us_pass varchar2(40) not null,
    us_name varchar2(20) not null,
    us_nickname varchar2(20) unique,
    us_birth char(8),
    us_email varchar2(30),
    us_gender varchar2(8), --����(male), ����(female)
    us_address1 varchar2(100) not null, -- �����ȣ
	us_address2 varchar2(100) not null, -- �⺻�ּ�
	us_address3 varchar2(100) not null, -- ���ּ�
    us_phone char(13) not null,
    us_joindate date default sysdate,
    us_grade number(1) default 1 -- ������(0), �Ϲ�ȸ��(1)
);
select * from marketuser;
update marketuser set 
us_id = 'id345',
us_pass = '3456',
us_name = '�����',
us_birth = '19990928',
us_gender = '����',
us_address1 = '123',
us_address2 = '123',
us_address3 = '����123��123ȣ',
us_phone = '01012341234'
where us_num = '1';


--��ǰ ���̺�
create table marketboard(
    bo_num number primary key,
	bo_id varchar2(30),
    bo_title varchar2(100) not null,
    bo_nickname varchar2(20),
    bo_price number not null,
    bo_content varchar(2000) not null,
    bo_image1 varchar2(500),
	bo_image2 varchar2(500),
	bo_image3 varchar2(500),
    bo_regdate date default sysdate,
    bo_count number default 0,
    bo_heart number,
    bo_heartcount number,
    bo_category varchar2(50),
    bo_address1 varchar2(10) not null,-- �����ȣ
	bo_address2 varchar2(100) not null, -- �⺻ �ּ�
	bo_address3 varchar2(100) not null, -- �� �ּ�
    constraint fk_board_id foreign key (bo_id) references marketuser (us_id)
    on delete cascade
);

--����������
create table mypage(
    my_id varchar2(30),
    my_image varchar2(500),
    my_intro varchar2(1000),
    my_nickname varchar2(20) primary key,
    constraint fk_my_id foreign key (my_id) references marketuser (us_id)
    on delete cascade
);

--���ų���
create table buyboard(
    buy_num number primary key,
    buy_nickname varchar2(30),
    buy_title varchar2(100),
    buy_price number,
    buy_seller varchar2(30),
    buy_buydate date default sysdate,
    constraint fk_buy_id foreign key (buy_nickname) references mypage (my_nickname)
    on delete cascade
);

--�Ǹų���
create table sellboard(
    sel_num number primary key,
    sel_nickname varchar2(30),
    sel_title varchar2(100),
    sel_price number,
    sel_buyer varchar2(30),
    sel_selldate date default sysdate,
    constraint fk_sell_id foreign key (sel_nickname) references mypage (my_nickname)
    on delete cascade
);

--����
create table heartboard(
    he_num number primary key,
    he_nickname varchar2(30),
    he_title varchar2(100),
    he_price number,
    he_seller varchar2(30),
    constraint fk_heart_id foreign key (he_nickname) references mypage (my_nickname)
    on delete cascade
);

--������
create table center(
    ce_num number primary key,
    ce_pass varchar(40),
    ce_nickname varchar2(20),
    ce_title varchar2(100),
    ce_content varchar2(2000),
    ce_id varchar2(30),
    constraint fk_center_id foreign key (ce_id) references marketuser (us_id)
    on delete cascade
);
