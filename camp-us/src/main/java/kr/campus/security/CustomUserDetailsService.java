package kr.campus.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import kr.campus.domain.CustomUser;
import kr.campus.domain.MemberVO;
import kr.campus.mapper.MemberMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Log4j

public class CustomUserDetailsService implements UserDetailsService {
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper memberMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.warn("load user by userName : " + username);
		MemberVO vo = memberMapper.read(username);
		// 전달된 id로 사용자 정보를 검색
		return vo == null ? null : new CustomUser(vo);
	}

}
