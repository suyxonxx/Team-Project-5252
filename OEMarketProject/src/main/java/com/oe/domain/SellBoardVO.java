package com.oe.domain;

import java.util.Date;

import lombok.Data;

/*
CREATE TABLE sellboard(
    sel_nickname VARCHAR2(30),
    sel_title VARCHAR2(100),
    sel_price NUMBER,
    sel_buyer VARCHAR2(30),
    sel_selldate DATE DEFAULT sysdate,
    CONSTRAINT fk_sell_id FOREIGN KEY (sel_nickname) REFERENCES mypage (my_nickname)
    ON DELETE CASCADE
);
*/

@Data
public class SellBoardVO {
	private String sel_nickname;
	private String sel_title;
	private Integer sel_price;
	private String sel_buyer;
	private Date sel_selldate;
}
