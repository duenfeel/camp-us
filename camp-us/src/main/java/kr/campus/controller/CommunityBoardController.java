package kr.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.campus.service.CommunityBoardService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/community/*")
@AllArgsConstructor
public class CommunityBoardController {
	private CommunityBoardService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list", service.getList());
	}
	
	@GetMapping("/editPost")
	public void editPost(Model model) {
		log.info("edit post");
		model.addAttribute("editPost", service.getList());
	}
	
	@GetMapping("/readPost")
	public void readPost(Model model) {
		log.info("read post");
		model.addAttribute("readPost", service.getList());
	}
	
	@GetMapping("/registPost")
	public void registPost(Model model) {
		log.info("regist post");
		model.addAttribute("registPost", service.getList());
	}
}
