package com.oe.domain;

import lombok.Data;

/*
CREATE TABLE mypage(
    my_id VARCHAR2(30),
    my_image VARCHAR2(500),
    my_intro VARCHAR2(1000),
    my_nickname VARCHAR2(20) UNIQUE,
    CONSTRAINT fk_my_id FOREIGN KEY (my_id) REFERENCES marketuser (us_id)
    ON DELETE CASCADE
);
*/

@Data
public class MyPageVO {
	private String my_id;
	private String my_image;
	private String my_intro;
	private String my_nickname;
}
