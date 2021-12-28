package kr.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/shop/*")
@AllArgsConstructor
public class ShopController {
	
	@GetMapping("/modifyItem")
	public void modifyItem() {
	}
	
	@GetMapping("/registItem")
	public void registItem() {
	}
	
	@GetMapping("/readItem")
	public void readItem() {
	}
	
	@GetMapping("/itemList")
	public void itemList() {
	}
	
	@GetMapping("/sale")
	public void sale() {
	}
}
