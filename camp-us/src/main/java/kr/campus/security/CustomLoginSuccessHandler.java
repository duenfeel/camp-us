package kr.campus.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import lombok.extern.log4j.Log4j;


@Log4j
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {
/*
 * 로그인 성공시 처리 
 * */
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		List<String> roleNames = new ArrayList<String>(); // 권한 관리목록을 저장 할 객체
		authentication.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});
		log.warn("roleNames:" + roleNames);

		if (roleNames.contains("ROLE_ADMIN")) {
			response.sendRedirect("/admin/member/list");
		}

		else {
			response.sendRedirect("/");
		}

	}

}
