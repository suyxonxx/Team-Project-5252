package com.oe.domain;

import lombok.Data;

/*
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
*/

@Data
public class CenterVO {
	private Integer ce_num;
	private String ce_pass;
	private String ce_nickname;
	private String ce_title;
	private String ce_content;
	private String ce_id;
}
