package kr.campus.domain;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {


	//회원 id
	private String userId;
	
	//회원 비밀번호
	private String password;
	
	//회원 이메일
    private String email;
	
	//회원 이름
	private String nickname;	
	
	//회원 우편번호
	private String Addr1;
	
	//회원 주소
	private String Addr2;
	
	//회원 상세주소
	private String Addr3;
	
	// 회원 참고사항
	private String Addr4;
	
	//회원 전화번호
	private String contact;
	
	private List<AuthVO> authList;
	private Long cnt ; // 총건수
	

	

}
