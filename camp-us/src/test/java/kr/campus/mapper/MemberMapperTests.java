package kr.campus.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.campus.domain.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {

	@Autowired
	private MemberMapper membermapper;
	
	//회원가입 쿼리 테스트 메서드
		@Test
		public void memberJoin() throws Exception{
			
			MemberVO member = new MemberVO();
			
			member.setUserId("test");			//회원 id
			member.setPassword("test");			//회원 비밀번호
			member.setNickname("test");		//회원 이름
			member.setEmail("test@naver.com");		//회원 메일
			member.setContact("01012345678");		//회원 전화번호
			member.setAddr1("2020");		//회원 우편번호
			member.setAddr2("인천어디");		//회원 주소
			member.setAddr3("몇동몇호");		//회원 상세주소
			member.setAddr4("최종혁병신");
			
			membermapper.memberJoin(member);
			
		}
	
}
