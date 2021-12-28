package kr.campus.service;

import kr.campus.domain.AuthVO;

public interface MemberAuthService {

	public void add(AuthVO vo);

	public int delete(AuthVO vo);

}
