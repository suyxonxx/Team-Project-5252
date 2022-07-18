package com.ezen.market.OEM.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

//	common/upload 매핑.
@Controller
@RequestMapping
public class FileUploadController{
	
	private static final String FILE_SERVER_PATH = "C:/BoardFiles";

	@RequestMapping("/upload")
	public String upload(@RequestParam("uploadFile") MultipartFile file, ModelAndView mv, Model model) throws IllegalStateException, IOException {
		if(!file.getOriginalFilename().isEmpty()) {
			file.transferTo(new File(FILE_SERVER_PATH, file.getOriginalFilename()));
			model.addAttribute("msg", "File uploaded successfully.");
		}else {
			model.addAttribute("msg", "Please select a valid mediaFile..");
		}
//		fileUploadChk.jsp에서 유효성 체크 예정
//		- 파일 업로드 성공 시 이전 화면(상품의 경우 상세보기, 프사의 경우 마이페이지)으로 되돌아가기
//		- 실패 시 원래 있던 페이지에 그대로 머물기.
		return "fileUploadChk.jsp";
	}
}
