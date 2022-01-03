package kr.campus.mapper;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;

import kr.campus.domain.Criteria;
import kr.campus.domain.MemberVO;

public interface MemberMapper {

	public void memberJoin(MemberVO member);
	
	// 회원정보 수정
	public int memberUpdate(MemberVO member);
	
	public MemberVO read(String userid);

	// 아이디 유효성 검사
	public MemberVO idcheck(MemberVO member);
	
	public List<MemberVO> memberselect(Criteria cri);

}
