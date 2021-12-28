package kr.campus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.campus.domain.CommunityBoardVO;
import kr.campus.mapper.CommunityBoardMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CommunityBoardServiceImp implements CommunityBoardService {

	@Setter(onMethod_ = @Autowired)
	private CommunityBoardMapper mapper;
	
	@Override
	public void register(CommunityBoardVO board) {
		log.info("register " + board);
		mapper.insert(board);
	}

	@Override
	public CommunityBoardVO get(Long bno) {
		log.info("get " + bno);
		return mapper.read(bno);
	}

	@Override
	public boolean modify(CommunityBoardVO board) {
		log.info("modify " + board);
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Long bno) {
		log.info("remove " + bno);
		return mapper.remove(bno) == 1;
	}

	@Override
	public List<CommunityBoardVO> getList() {
		log.info("get list");
		return mapper.getList();
	}

}
