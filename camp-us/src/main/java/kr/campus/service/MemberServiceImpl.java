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

	/*
	 * BCryptPasswordEncoder 객체는 복호화 알고리즘이 없어 ..
	 * 복호화을 못해  어떻게 ??
	 * 텍스트박스 받아서 그걸 암호화 시켜 비밀번호 암호화와 같은지 여부 같다면 회원수정
	 * 아니면 다른거잔아 메세지출력 오류 .비밀번호가 다릅니다
	 * */

	@Override
	public int memberUpdate(MemberVO member) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		 member.setPassword(passwordEncoder.encode(member.getPassword()));
		return membermapper.memberUpdate(member);
	}
}
