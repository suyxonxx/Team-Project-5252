package com.oe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.oe.domain.MyPageVO;
import com.oe.service.MyPageService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/mypage/*")
public class MyPageController {
	private MyPageService service;
	
	@RequestMapping("mypage")
	public void mypageMain(String my_id, Model model) {
		log.info("mypageMain★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★");
		model.addAttribute("mypage", service.mypageMain(my_id));
	}
	
	@PostMapping("/updateImage")
	public String myImgUpload(MyPageVO vo, RedirectAttributes rttr) {
		log.info("myImgUpload : " + vo);
		
		if(service.myImgUpload(vo) == 1) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/mypage/mypage";
	}
	
	@PostMapping("/updateProfile")
	public String profileEdit(MyPageVO vo, RedirectAttributes rttr) {
		log.info("updateProfile : " + vo);
		
		if(service.profileEdit(vo) == 1) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/mypage/mypage";
	}
}
