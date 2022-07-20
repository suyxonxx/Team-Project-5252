package com.oe.domain;

import java.util.Date;

import lombok.Data;

/*
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
*/

@Data
public class MarketUserVO {
	private Integer us_num;
	private String us_id;
	private String us_pass;
	private String us_name;
	private String us_nickname;
	private String us_birth;
	private String us_email;
	private String us_gender;
	private String us_address1;
	private String us_address2;
	private String us_address3;
	private String us_phone;
	private Date us_joindate;
	private Integer us_grade;
}
