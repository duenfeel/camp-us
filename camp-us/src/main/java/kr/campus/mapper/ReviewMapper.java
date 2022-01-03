package kr.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.campus.domain.Criteria;
import kr.campus.domain.ReviewVO;

public interface ReviewMapper {
	
	public int insert(ReviewVO review);
	
	public ReviewVO read(int reviewNo);
	
	public int delete(int reviewNo);
	
	public int update(ReviewVO review);
	
	public List<ReviewVO> reviewList(
			@Param("cri") Criteria cri, 
			@Param("itemCode") String itemCode);
}
