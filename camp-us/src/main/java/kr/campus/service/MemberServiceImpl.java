package kr.campus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.campus.domain.AuthVO;
import kr.campus.domain.Criteria;
import kr.campus.domain.MemberVO;
import kr.campus.mapper.CommunityBoardMapper;
import kr.campus.mapper.MemberAuthMapper;
import kr.campus.mapper.MemberMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService{


	@Autowired
	 MemberMapper membermapper;
	@Autowired
	private MemberAuthMapper authmapper; // 권한 
	
	
	@Override
	public void memberJoin(MemberVO member) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		 member.setPassword(passwordEncoder.encode(member.getPassword()));
		// TODO Auto-generated method stub
		membermapper.memberJoin(member);// 회원가입
		
		AuthVO auth = new AuthVO();
		auth.setAuth("ROLE_MEMER");
		auth.setUserId(member.getUserId());
		
		authmapper.add(auth); // 권한 주기 
	}


	@Override
	public MemberVO read(String userid) {
		// TODO Auto-generated method stub
		return membermapper.read(userid);
	}


	@Override
	public List<MemberVO> memberselect(Criteria cri) {
		// TODO Auto-generated method stub
		return membermapper.memberselect(cri);
	}


	@Override
	public MemberVO idcheck(MemberVO member) {
		// TODO Auto-generated method stub
		return membermapper.idcheck(member);
	}
}
