package kr.campus.service;

import kr.campus.domain.ItemVO;

public interface AdminService {

	/* 상품 등록 */
	public void itemsEnroll(ItemVO items);

	/*
	 * public List<ProductVO> list(Criteria cri); // 상품 목록(관리자)
	 * 
	 * public void productUpdate(ProductVO vo); // 상품 수정(관리자)
	 * 
	 * public void productDelete(ProductVO vo); // 상품 삭제(관리자)
	 */
}
