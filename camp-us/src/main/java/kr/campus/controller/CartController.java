package kr.campus.controller;


import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.campus.domain.CartListVO;
import kr.campus.domain.CartVO;
import kr.campus.domain.ItemVO;
import kr.campus.service.CartService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/user/cart/*")
//@AllArgsConstructor
public class CartController {
	
	private CartService service;
//	private UserService userService;
	
	//장바구니 담기
	@ResponseBody
//	@PreAuthorize("isAuthenticated()")
	@PostMapping("/insert")
	public String insert(CartVO cart, Principal principal, ItemVO item) {
		String userID = principal.getName();
		cart.setUserID(userID);
		int quantity = item.getQuantity();
		cart.setQuantity(quantity);
		log.info("insert cart controller ...." + cart);
		service.insert(cart);
		
		return "redirect:/shop/readItem";
	}
	
	//장바구니 목록 보이기
	@GetMapping("/list")
	@Transactional
	public void cartList(CartListVO cartList, Model model, Principal principal) {
		String userID = principal.getName();
		cartList.setUserID(userID);
		log.info("cart list controller...." + cartList);
		model.addAttribute("cart", service.list(cartList));
//		model.addAttribute("user", userService.getUser(userID));
	}
	
	//장바구니 품목 삭제
//	@PreAuthrize("isAuthenticated()")
	@ResponseBody
	@PostMapping("/delete")
	public String delete(CartListVO cartList, Principal principal) {
		String userID = principal.getName();
		cartList.setUserID(userID);
		log.info("delete cart list controller...." + cartList);
		service.delete(cartList);
		return "redirect:/user/cart";
	}
}
