package kr.campus.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.campus.domain.ItemVO;
import kr.campus.mapper.AdminMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AdminServiceImpl implements AdminService {
	
	// @Autowired 만 있는 거는 받아오기만 하겠다는 뜻
	// @Setter 까지 있으면 쓰기까지 하겠다는 뜻
	@Setter(onMethod_ = @Autowired)
	private AdminMapper adminMapper;

	/* 상품 등록 */
	@Override
	public void itemsEnroll(ItemVO items) {
		
		log.info("(service)itemsEnroll......");
		
		adminMapper.itemsEnroll(items);
		
	}
}
