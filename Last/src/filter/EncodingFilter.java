package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

// 필터 (filter)
// - 요청한 자원(jsp)에 도달하기 전에 먼처 요청/응답을 처리할 수 있는 클래스
// - 사용자 인증, 권한 확인, 인코딩 등에 사용된다

@WebFilter("/*")
public class EncodingFilter implements Filter {
	public void init(FilterConfig filterConfig) throws ServletException {}
	
	public void destroy() {}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		request.setCharacterEncoding("utf-8");
		chain.doFilter(request, response);
	}
	
}
