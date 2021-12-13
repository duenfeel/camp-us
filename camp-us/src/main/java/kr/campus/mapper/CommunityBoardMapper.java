package kr.campus.mapper;

import java.util.List;

import kr.campus.domain.CommunityBoardVO;

public interface CommunityBoardMapper {
	public List<CommunityBoardVO> getList();
	
	public void insert(CommunityBoardVO board);
	
	public CommunityBoardVO read(Long bno);
	
	public int remove(Long bno);
	
	public int update(CommunityBoardVO board);
	
}
