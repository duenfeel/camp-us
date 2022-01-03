package kr.campus.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.campus.domain.AuthVO;
import kr.campus.domain.Criteria;
import kr.campus.domain.MemberVO;
import kr.campus.service.MemberAuthService;
import kr.campus.service.MemberService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/admin/member/*")
@AllArgsConstructor
public class AdminMemberController {

	private MemberService service;
	private MemberAuthService authservice;

	@SuppressWarnings("unlikely-arg-type")
	@GetMapping("list")
	public void list(Authentication authentication, Model model) {
		String userid = "";
		try {
			UserDetails userDetails = (UserDetails) authentication.getPrincipal();
			userid = userDetails.getUsername();// �떆�걧由ы떚�뿉�꽌�뒗 username�씠 id

			List<String> roleNames = new ArrayList<String>(); // 沅뚰븳 愿�由щぉ濡앹쓣 ���옣 �븷 媛앹껜
			MemberVO mvo = service.read(userid);
			if (mvo.getAuthList() != null) {
				log.info("datalist");
//				roleNames.add(m);
				for (int i = 0; i < mvo.getAuthList().size(); i++) {
					roleNames.add(mvo.getAuthList().get(i).getAuth());
//		w
				}

			}

			if (roleNames.contains("ROLE_ADMIN")) {
				model.addAttribute("auth", "ROLE_ADMIN");
			}
			///
		} catch (Exception e) {
			log.info("error:"+e.getMessage());
		} finally {
			if (userid != null) {

				///
			}
		}
	}
	
	@SuppressWarnings("unlikely-arg-type")
	@GetMapping("registitem")
	public void registitem(Authentication authentication, Model model) {
		String userid = "";
		try {
			UserDetails userDetails = (UserDetails) authentication.getPrincipal();
			userid = userDetails.getUsername();// �떆�걧由ы떚�뿉�꽌�뒗 username�씠 id

			List<String> roleNames = new ArrayList<String>(); // 沅뚰븳 愿�由щぉ濡앹쓣 ���옣 �븷 媛앹껜
			MemberVO mvo = service.read(userid);
			if (mvo.getAuthList() != null) {
				log.info("registitem");
//				roleNames.add(m);
				for (int i = 0; i < mvo.getAuthList().size(); i++) {
					roleNames.add(mvo.getAuthList().get(i).getAuth());
//		w
				}

			}

			if (roleNames.contains("ROLE_ADMIN")) {
				model.addAttribute("auth", "ROLE_ADMIN");
			}
			///
		} catch (Exception e) {
			log.info("error:"+e.getMessage());
		} finally {
			if (userid != null) {

				///
			}
		}
	}

	// membermapper
	@PostMapping(value = "searchlist", produces = MediaType.APPLICATION_JSON_VALUE)

	public ResponseEntity<List<MemberVO>> memberselect(Criteria cri) {
		log.info("key" + cri.getPageNum());
		return new ResponseEntity<>(service.memberselect(cri), HttpStatus.OK);
	}

	@GetMapping("view")
	public void view(@RequestParam String userid, Model model) {
		model.addAttribute("member", service.read(userid));
	}

	@PostMapping("/memberauth")
	public ResponseEntity<String> memberauth(String userid, String auth, String checkyn, Model model) {
		AuthVO vo = new AuthVO();
		vo.setAuth(auth);
		vo.setUserId(userid);// setUserid(userid);
		// ;
		//
		if (checkyn.equals("y")) {
			log.info("권한부여");
			authservice.add(vo);
		} else {
			log.info("권한부여");
			authservice.delete(vo);
		}
		return new ResponseEntity<String>("succuess", HttpStatus.OK);
	}

}
