package kr.campus.service;

import java.util.List;

import kr.campus.domain.CommunityBoardVO;

public interface CommunityBoardService {

	public void register(CommunityBoardVO board);
	
	public CommunityBoardVO get(Long bno);
	
	public boolean modify(CommunityBoardVO board);
	
	public boolean remove(Long bno);
	
	public List<CommunityBoardVO> getList();
}
