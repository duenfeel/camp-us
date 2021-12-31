package kr.campus.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.campus.domain.AuthVO;

public class AdminInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		AuthVO abo = new AuthVO();
		
		if (!abo.getAuth().contains("ROLE_ADMIN")) { // 관리자 계정 아닌 경우

			response.sendRedirect("/"); // 메인페이지로 리다이렉트

			return false;

		}

		return true;
	}

}
