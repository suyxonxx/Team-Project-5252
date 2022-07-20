package com.oe.mapper;

import com.oe.domain.MyPageVO;

public interface MyPageMapper {
	public MyPageVO read(String my_id);
	public int updateImage(MyPageVO vo);
	public int updateProfile(MyPageVO vo);
}
