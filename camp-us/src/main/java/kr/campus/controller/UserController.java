package kr.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/user/*")
@AllArgsConstructor
public class UserController {
	
	@GetMapping("/cart")
	public void cart() {
	}
	
	@GetMapping("/myCommunity")
	public void myCommunity() {
	}
	
	@GetMapping("/editProfile")
	public void myProfile() {
	}
	
	@GetMapping("/orderList")
	public void orderList() {
	}
	
	@GetMapping("/wishlist")
	public void wishlist() {
	}
}
