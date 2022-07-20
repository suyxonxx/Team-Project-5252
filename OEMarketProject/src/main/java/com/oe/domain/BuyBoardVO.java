package com.oe.domain;

import java.util.Date;

import lombok.Data;

/*
CREATE TABLE buyboard(
    buy_nickname VARCHAR2(30),
    buy_title VARCHAR2(100),
    buy_price NUMBER,
    buy_seller VARCHAR2(30),
    buy_buydate DATE DEFAULT sysdate,
    CONSTRAINT fk_buy_id FOREIGN KEY (buy_nickname) REFERENCES mypage (my_nickname)
    ON DELETE CASCADE
);
*/

@Data
public class BuyBoardVO {
	private String buy_nickname;
	private String buy_title;
	private Integer buy_price;
	private String buy_seller;
	private Date buy_buydate;
}
