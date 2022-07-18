package com.oe.domain;

import java.util.Date;

import lombok.Data;

/*
	create table buyboard(
	    buy_id varchar2(30),
	    buy_title varchar2(100),
	    buy_price number,
	    buy_seller varchar2(30),
	    buy_buydate date default sysdate,
	    constraint fk_buy_id foreign key (buy_id) references mypage (my_nickname)
	    on delete cascade
	);
*/

@Data
public class BuyBoardVO {
	private String buy_id;
	private String buy_title;
	private Integer buy_price;
	private String buy_seller;
	private Date buy_buydate;
}
