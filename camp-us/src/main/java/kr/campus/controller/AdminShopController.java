package kr.campus.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.campus.domain.ItemVO;
import kr.campus.service.AdminService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/admin/shop/*")
@AllArgsConstructor
public class AdminShopController {


	private AdminService adminService;
	
	@GetMapping("/modifyItem")
	public void modifyItem() {
	}


	@GetMapping("/registItem")
	public void registItem() {
	}

	//단순 1회성 RedirectAttributes Model 화면 이동 안한다면 계속 유지 
	@PostMapping("/registItem")
	public ResponseEntity<String> registItem(ItemVO items) {
		log.info("registItem : " + items);
		
//		  service.registItem(shop); rttr.addAllAttributes("result", shop.getItemCode());
		// 
		 try {
			 adminService.itemsEnroll(items);
		} catch (Exception e) {
			log.info("error : " + e.getMessage());
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		// rttr.addFlashAttribute("result",items.getItemcode());
		// 리다이렉트 시키면서 1회용 값을 전달.

	
		 return new ResponseEntity<String>("succuess", HttpStatus.OK);

	}



	// 상품 검색 시, 검색된 상품 목록 페이지 이동
//		@GetMapping("/search")
//		public void view(Model model, Criteria cri){
//			//log.info("검색 목록 controller..");
//			int total = service.getTotal(cri);
//			
//			model.addAttribute("product", service.searchList(cri));
//			model.addAttribute("pageMaker", new PageDTO(cri,total));
//		}

}
