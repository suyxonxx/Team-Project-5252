package com.oe.mapper;

import com.oe.domain.MarketUserVO;

public interface MarketUserMapper {
	
	public void joinUser(MarketUserVO vo);
	public void updateUser(MarketUserVO vo);
	public MarketUserVO readUser(String us_id);
}
