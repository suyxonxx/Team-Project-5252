package com.oe.domain;

import java.util.Date;

import lombok.Data;

/*
	create table sellboard(
	    sel_id varchar2(30),
	    sel_title varchar2(100),
	    sel_price number,
	    sel_buyer varchar2(30),
	    sel_selldate date default sysdate,
	    constraint fk_sell_id foreign key (sel_id) references mypage (my_nickname)
	    on delete cascade
	);
*/

@Data
public class SellBoardVO {
	private String sel_id;
	private String sel_title;
	private Integer sel_price;
	private String sel_buyer;
	private Date sel_selldate;
}
