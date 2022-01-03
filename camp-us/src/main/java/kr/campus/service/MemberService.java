package kr.campus.service;

import java.util.List;

import kr.campus.domain.Criteria;
import kr.campus.domain.MemberVO;

public interface MemberService {

	public void memberJoin(MemberVO member) ;
	
	public MemberVO read(String userid);
	
	//회원정보 수정
	public int memberUpdate(MemberVO member);
	
	public List<MemberVO> memberselect(Criteria cri);
	
	public MemberVO idcheck(MemberVO member);
}
