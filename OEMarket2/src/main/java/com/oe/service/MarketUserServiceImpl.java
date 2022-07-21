package com.oe.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.oe.domain.MarketUserVO;
import com.oe.mapper.MarketUserMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class MarketUserServiceImpl implements MarketUserService{
	
	private MarketUserMapper usermapper;
	@Override
	public void register(MarketUserVO vo) {
		log.info("join====================");
		usermapper.joinUser(vo);
	}

	@Override
	public void get(Long us_num) {
	}

	@Override
	public List<MarketUserVO> getList() {
		
		return null;
	}

	@Override
	public void modify(MarketUserVO vo) {
	}

	@Override
	public void remove(Long us_num) {
	}

}
