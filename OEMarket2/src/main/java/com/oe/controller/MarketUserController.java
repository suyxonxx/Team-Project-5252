package com.oe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oe.domain.MarketUserVO;
import com.oe.service.MarketUserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/user/*")
@AllArgsConstructor
public class MarketUserController {
	
	private MarketUserService userService;
	
	@GetMapping("join")
	public void joinUser() {}
	@PostMapping("join")
	public void joinUser(MarketUserVO vo) {
		log.info("vo : " + vo);
		userService.register(vo);
	}
}
