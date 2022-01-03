package kr.campus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.campus.domain.MemberVO;
import kr.campus.service.MemberService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping(value="/member")
public class MemberController {
	/*
	 * private MemberService service;
	 * 
	 * @GetMapping("login") public void login() {
	 * 
	 * }
	 * 
	 * @GetMapping("resetPassword") public void resetPassword() {
	 * 
	 * }
	 */

	@Autowired
	private MemberService memberservice;
	
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginPageGET() {

	}
	
	
	//회원가입 창 진입
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void joinPageGET() {
		
	}
	
	@GetMapping("profile")
	public void profile(Authentication authentication,Model model)
	{
		String userid = "";

		try {
			UserDetails userDetails = (UserDetails) authentication.getPrincipal();
			userid = userDetails.getUsername();// 시큐리티에서는 username이 id 
		} catch (Exception e) {
			model.addAttribute("error", "error");
		} finally {
			if (userid != null) {
				
				model.addAttribute("member", memberservice.read(userid));
			}
			else {
				model.addAttribute("error", "error");
			}
		}
	}
	
	
	@PostMapping("profile")
	public ResponseEntity<String> profile(MemberVO member)
	{
		//memberUpdate
		try {
			memberservice.memberUpdate(member);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return new ResponseEntity<String>("succuess", HttpStatus.OK);
	}
	
	
	//회원가입 창에서 값 입력후 진행 post
	@RequestMapping(value="/join", method = RequestMethod.POST)
	public ResponseEntity<String> joinPost(MemberVO member) {
		
		
		
		try {
			memberservice.memberJoin(member);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return new ResponseEntity<String>("succuess", HttpStatus.OK);
		
		
	}
	/// 아이디 중복확인
		@PostMapping("/idCheck")
		public ResponseEntity<String> idCheck(MemberVO member, Model model) {
			MemberVO vo = memberservice.idcheck(member);
			if (vo != null) {
				return new ResponseEntity<String>("no", HttpStatus.OK);
			} else
				return new ResponseEntity<String>("yes", HttpStatus.OK);
		}
	//MemberVO
	
}
