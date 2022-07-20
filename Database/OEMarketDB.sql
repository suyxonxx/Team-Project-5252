/*system으로 접속*/

/*
DROP TABLE MARKETUSER;
DROP TABLE MARKETBOARD;
DROP TABLE MYPAGE;
DROP TABLE BUYBOARD;
DROP TABLE SELLBOARD;
DROP TABLE HEARTBOARD;
DROP TABLE CENTER;
*/

DESC MARKETUSER;
DESC MARKETBOARD;
DESC MYPAGE;
DESC BUYBOARD;
DESC SELLBOARD;
DESC HEARTBOARD;
DESC CENTER;

INSERT INTO marketuser (us_num, us_id, us_pass, us_name, us_nickname, us_birth,
                        us_email, us_gender, us_address1, us_address2, us_address3,
                        us_phone, us_grade)
VALUES (1, 'master', '1234', '관리자', '모나리자', '19980101',
        'master@gmail.com', 'female', '10101', '푸른 하늘 아래', '언덕 위',
        '01010101010',0);

SELECT * FROM MARKETUSER;

COMMIT;

--유저테이블
CREATE TABLE marketuser(
    us_num NUMBER,
    us_id VARCHAR2(30) PRIMARY KEY,
    us_pass VARCHAR2(40) NOT NULL,
    us_name VARCHAR2(20) NOT NULL,
    us_nickname VARCHAR2(20) UNIQUE,
    us_birth CHAR(8),
    us_email VARCHAR2(30),
    us_gender VARCHAR2(8), --남성(male), 여성(female)
    us_address1 VARCHAR2(100) NOT NULL, -- 우편번호
    us_address2 VARCHAR2(100) NOT NULL, -- 기본주소
    us_address3 VARCHAR2(100) NOT NULL, -- 상세주소
    us_phone CHAR(13) NOT NULL,
    us_joindate DATE DEFAULT sysdate,
    us_grade NUMBER(1) DEFAULT 1 -- 관리자(0), 일반회원(1)
);

--상품 테이블
CREATE TABLE marketboard(
    bo_num NUMBER PRIMARY KEY,
    bo_id VARCHAR2(30),
    bo_title VARCHAR2(100) NOT NULL,
    bo_nickname VARCHAR2(20),
    bo_price NUMBER NOT NULL,
    bo_content VARCHAR(2000) NOT NULL,
    bo_image1 VARCHAR2(500), -- C://oe_upload
    bo_image2 VARCHAR2(500),
    bo_image3 VARCHAR2(500),
    bo_regdate DATE DEFAULT sysdate,
    bo_count NUMBER DEFAULT 0,
    bo_heart NUMBER,
    bo_heartcount NUMBER,
    bo_category VARCHAR2(50),
    bo_address1 VARCHAR2(10) NOT NULL,-- 우편번호
    bo_address2 VARCHAR2(100) NOT NULL, -- 기본 주소
    bo_address3 VARCHAR2(100) NOT NULL, -- 상세 주소
    CONSTRAINT fk_board_id FOREIGN KEY (bo_nickname) REFERENCES marketuser (us_id)
    ON DELETE CASCADE
);

--마이페이지
CREATE TABLE mypage(
    my_id VARCHAR2(30),
    my_image VARCHAR2(500),
    my_intro VARCHAR2(1000),
    my_nickname VARCHAR2(20) UNIQUE,
    CONSTRAINT fk_my_id FOREIGN KEY (my_id) REFERENCES marketuser (us_id)
    ON DELETE CASCADE
);

SELECT * FROM MYPAGE;

insert into mypage(my_id, my_intro, my_nickname)
values ('master', '안녕하세요, 리자입니다.', '모나리자');

commit;

--구매내역
CREATE TABLE buyboard(
    buy_nickname VARCHAR2(30),
    buy_title VARCHAR2(100),
    buy_price NUMBER,
    buy_seller VARCHAR2(30),
    buy_buydate DATE DEFAULT sysdate,
    CONSTRAINT fk_buy_id FOREIGN KEY (buy_nickname) REFERENCES mypage (my_nickname)
    ON DELETE CASCADE
);

--판매내역
CREATE TABLE sellboard(
    sel_nickname VARCHAR2(30),
    sel_title VARCHAR2(100),
    sel_price NUMBER,
    sel_buyer VARCHAR2(30),
    sel_selldate DATE DEFAULT sysdate,
    CONSTRAINT fk_sell_id FOREIGN KEY (sel_nickname) REFERENCES mypage (my_nickname)
    ON DELETE CASCADE
);

--찜목록
CREATE TABLE heartboard(
    he_nickname VARCHAR2(30),
    he_title VARCHAR2(100),
    he_price NUMBER,
    he_seller VARCHAR2(30),
    CONSTRAINT fk_heart_id FOREIGN KEY (he_nickname) REFERENCES mypage (my_nickname)
    ON DELETE CASCADE
);

--고객센터
CREATE TABLE center(
    ce_num NUMBER PRIMARY KEY,
    ce_pass VARCHAR(40),
    ce_nickname VARCHAR2(20),
    ce_title VARCHAR2(100),
    ce_content VARCHAR2(2000),
    ce_id VARCHAR2(30),
    CONSTRAINT fk_center_id FOREIGN KEY (ce_id) REFERENCES marketuser (us_id)
    ON DELETE CASCADE
);