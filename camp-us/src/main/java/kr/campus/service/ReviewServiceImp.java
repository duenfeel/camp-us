package kr.campus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.campus.domain.Criteria;
import kr.campus.domain.ReviewVO;
import kr.campus.mapper.ReviewMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ReviewServiceImp implements ReviewService {

	@Setter(onMethod_ = @Autowired)
	private ReviewMapper mapper;
	
	@Override
	public int insert(ReviewVO review) {
		log.info("insert ......" + review);
		return mapper.insert(review);
	}

	@Override
	public ReviewVO read(int reviewNo) {
		log.info("read......" + reviewNo);
		return mapper.read(reviewNo);
	}

	@Override
	public int delete(int reviewNo) {
		log.info("delete......" + reviewNo);
		return mapper.delete(reviewNo);
	}

	@Override
	public int update(ReviewVO review) {
		log.info("update......" + review);
		return mapper.update(review);
	}

	@Override
	public List<ReviewVO> reviewList(Criteria cri, String itemCode) {
		log.info("get review list ....." + itemCode);
		return mapper.reviewList(cri, itemCode);
	}

}
