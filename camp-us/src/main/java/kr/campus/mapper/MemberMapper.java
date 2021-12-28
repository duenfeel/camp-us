package kr.campus.mapper;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;

import kr.campus.domain.Criteria;
import kr.campus.domain.MemberVO;

public interface MemberMapper {

	public void memberJoin(MemberVO member);
	
	public MemberVO read(String userid);

	
	public List<MemberVO> memberselect(Criteria cri);
}
