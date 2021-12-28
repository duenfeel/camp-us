package kr.campus.mapper;

import kr.campus.domain.AuthVO;

public interface MemberAuthMapper {
	public void add(AuthVO vo);

	public int delete(AuthVO vo);

}
