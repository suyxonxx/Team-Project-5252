package com.oe.service;

import org.springframework.stereotype.Service;

import com.oe.domain.MyPageVO;
import com.oe.mapper.MyPageMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class MyPageServiceImpl implements MyPageService {
	private MyPageMapper mapper;
	
	@Override
	public MyPageVO mypageMain(String my_id) {
		log.info("mypageMain★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★");
		return mapper.read(my_id);
	}
	@Override
	public int myImgUpload(MyPageVO vo) {
		log.info("myImgUpload★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆");
		return mapper.updateImage(vo);
	}
	@Override
	public int profileEdit(MyPageVO vo) {
		log.info("profileEdit★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆");
		return mapper.updateProfile(vo);
	}
}
