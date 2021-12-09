package kr.campus.mapper;

import java.util.List;

import kr.campus.domain.CommunityBoardVO;

public interface CommonMapper {
	public List<CommunityBoardVO> getList();
	public void insert(CommunityBoardVO board);
	public CommunityBoardVO read(Long bno);
	public int delete(Long bno);
	public int update(CommunityBoardVO board);
}
