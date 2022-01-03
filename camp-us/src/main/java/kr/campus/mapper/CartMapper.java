package kr.campus.mapper;

import java.util.List;

import kr.campus.domain.CartListVO;
import kr.campus.domain.CartVO;

public interface CartMapper {

	public void insert(CartVO cart); //장바구니 담기
	
	public List<CartListVO> list(CartListVO cartList); //장바구니 목록
	
	public void delete(CartListVO cartList); //장바구니 삭제
	
	public void deleteAll(String userID); //장바구니 전체삭제
}
