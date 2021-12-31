package kr.campus.service;

import java.util.List;

import kr.campus.domain.Criteria;
import kr.campus.domain.MemberVO;

public interface MemberService {

	public void memberJoin(MemberVO member) ;
	public MemberVO read(String userid);
	
	public List<MemberVO> memberselect(Criteria cri);
	
	public MemberVO idcheck(MemberVO member);
}
