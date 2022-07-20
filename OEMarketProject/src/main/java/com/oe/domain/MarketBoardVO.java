package com.oe.domain;

import java.util.Date;

import lombok.Data;

/*
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
*/

@Data
public class MarketBoardVO {
	private Integer bo_num;
	private String bo_id;
	private String bo_title;
	private String bo_nickname;
	private Integer bo_price;
	private String bo_content;
	private String bo_image1;
	private String bo_image2;
	private String bo_image3;
	private Date bo_regdate;
	private Integer bo_count;
	private Integer bo_heart;
	private Integer bo_heartcount;
	private String bo_category;
	private String bo_address1;
	private String bo_address2;
	private String bo_address3;
}
