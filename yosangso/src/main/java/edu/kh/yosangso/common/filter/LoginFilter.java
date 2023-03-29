package edu.kh.yosangso.common.filter;

import javax.servlet.Filter;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;

@WebFilter("맨 마지막 단계, 나중에작성")
public class LoginFilter extends HttpFilter implements Filter {
	
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("로그인 필터 생성");
	}
	
	public void destroy() {
		System.out.println("로그인 필터 변경되어 파괴 -> 이후 재생성");
	}

	
}
