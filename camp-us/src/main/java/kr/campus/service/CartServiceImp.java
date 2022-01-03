package kr.campus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.campus.domain.CartListVO;
import kr.campus.domain.CartVO;
import kr.campus.mapper.CartMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service //로직처리를 위한 어노테이션
public class CartServiceImp implements CartService {

	@Setter(onMethod_ = @Autowired)
	private CartMapper mapper;
	
	@Override
	public void insert(CartVO cart) {
		log.info("insert cart service....");
		mapper.insert(cart);
	}

	@Override
	public List<CartListVO> list(CartListVO cartList) {
		log.info("cart list service....");
		return mapper.list(cartList);
	}

	@Override
	public void delete(CartListVO cartList) {
		log.info("delete cart service...." + cartList);
		mapper.delete(cartList);
	}

	@Override
	public void deleteAll(String userID) {
		log.info("delete all cart service...." + userID);
		mapper.deleteAll(userID);
	}

}
