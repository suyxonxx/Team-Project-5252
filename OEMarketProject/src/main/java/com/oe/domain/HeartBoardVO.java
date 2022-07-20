package com.oe.domain;

import lombok.Data;

/*
CREATE TABLE heartboard(
    he_nickname VARCHAR2(30),
    he_title VARCHAR2(100),
    he_price NUMBER,
    he_seller VARCHAR2(30),
    CONSTRAINT fk_heart_id FOREIGN KEY (he_nickname) REFERENCES mypage (my_nickname)
    ON DELETE CASCADE
);
*/

@Data
public class HeartBoardVO {
	private String he_nickname;
	private String he_title;
	private Integer he_price;
	private String he_seller;
}
