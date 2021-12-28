package kr.campus.domain;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class EmailVO {
	public String subject;// = "test 메일";
	public String content;// = "메일 테스트 내용";
	public String from;// = "보내는이 아이디@도메인주소";
	public String to;// = "받는이 아이디@도메인주소";
	
	public String type; // 이메일 보내는 타입? 패스워드 찾기 ,회원가입시 인증 
	public List<EmailAttackVO> arrList;
	
	
}
