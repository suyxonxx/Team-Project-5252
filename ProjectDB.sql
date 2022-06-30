-- ���� ���̺�
create table marketuser(
  num number,
  id varchar2(30) primary key,
  pass varchar2(40) not null,
  uname varchar2(20) not null,
  nickname varchar2(20) UNIQUE,
  birth char(8), -- ������� (YYYYMMDD)
  email varchar2(30) UNIQUE,
  address varchar2(100) not null,
  phone char(13) not null,
  profile varchar2(500), -- ������ ����
  udate date -- ��������
);
insert into marketuser(num,id,pass,uname,nickname,birth,email,address,phone,udate) 
    values(user_seq.nextval,'admin','1234','������','������1','19940430','ugiugi94@naver.com','������ �Ǽ���','01031734790',sysdate);
select * from marketuser;
-- ��ǰ ��� ���̺�
create table marketboard(
    num number,
    id varchar2(30) primary key,
    pass varchar2(40) not null,
    name varchar2(20) not null,
    title varchar2(100) not null,
    price number not null,
    content varchar2(2000) not null,
    image varchar2(500), -- ��ǰ ����
    bdate date, -- �� �ۼ� ����
    count number,
    heart number -- ���ϱ�
);
-- ������ ���̺�
create table customercenter(
    num number,
    id varchar2(30) primary key,
    pass varchar2(40) not null,
    name varchar2(20) not null,
    title varchar2(100) not null,
    content varchar2(2000) not null
);
-- ���� ������
create sequence user_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- ��ǰ ������
create sequence board_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- ������ ������
create sequence cus_seq
START with 1 INCREMENT by 1 MINVALUE 1;

-- ��� ���̺�
create table reply(
   num number,  -- �� ��ȣ
   name varchar2(20) not null,
   pass varchar2(40) not null,
   cdate date not null, -- ��� �� �ð�
   reply varchar2(1000) not null,
   profile varchar2(500)
);

-- ä�� ���̺�
create table chat(
   num number,
   id varchar2(30) primary key,
   name varchar2(20) not null,
   chat varchar2(1000) not null,
   profile varchar2(500),
   chdate date not null,
   image varchar2(500)
);