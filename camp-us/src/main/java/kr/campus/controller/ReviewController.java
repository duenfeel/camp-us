package kr.campus.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.campus.domain.ReviewVO;
import kr.campus.service.ReviewService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/review/")
@RestController
@Log4j
@AllArgsConstructor
public class ReviewController {

	private ReviewService service;
	
	@PostMapping(value="/new", consumes="application/json", produces=MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> create(@RequestBody ReviewVO review) {
		//@RequestBody 는 json형태로 받은 값을 객체로 변환함
		log.info("ReviewVO: "+review);
		int insertCnt = service.insert(review);
		log.info("Review insert Count: " + insertCnt);
		
		return insertCnt == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
