package kr.campus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.campus.domain.Criteria;
import kr.campus.domain.ItemVO;
import kr.campus.mapper.ItemMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ItemServiceImp implements ItemService {
	@Setter(onMethod_ = @Autowired)
	private ItemMapper mapper;

	@Override
	public List<ItemVO> itemList(Criteria cri) {
		log.info("get item list......" + cri);
		return mapper.itemList(cri);
	}

	@Override
	public ItemVO readItem(String itemCode) {
		log.info("read item......" + itemCode);
		return mapper.readItem(itemCode);
	}

	@Override
	public List<ItemVO> recommendedItems() {
		log.info("get item list order by purchases");
		return mapper.recommendedItems();
	}

	@Override
	public List<ItemVO> newList(Criteria cri) {
		log.info("get item list......" + cri);
		return mapper.newList(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count......");
		return mapper.getTotal(cri);
	}

}
