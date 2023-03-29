package edu.kh.yosangso.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.kh.yosangso.member.model.service.MemberService;
import edu.kh.yosangso.member.model.vo.Member;

@WebServlet("/member/login")
public class LoginServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String inputEmail = req.getParameter("inputEmail");
		String inputPw = req.getParameter("inputPw");
		
		System.out.println("inputEmail : " + inputEmail);
		System.out.println("inputPw : " + inputPw);
		
//		멤버 객체 로그인 이메일 비번만 얻어옴
		Member mem = new Member();
		mem.setMemberEmail(inputEmail);
		mem.setMemberPw(inputPw);
		
		try {
//			서비스 -> 서블릿 넘길 때, 
			MemberService service = new MemberService();
			
//			이게 수행되어야 다음 줄이 수행된다
//			보내주고 (나중에) 멤버 형태로 받는다
			Member loginMember = service.login(mem);
			
			HttpSession session = req.getSession();
			
			if(loginMember != null) { // 성공
			
				session.setAttribute("loginMember", loginMember);
				
				session.setMaxInactiveInterval(3600); // 1시간
			
			// 쿠키
			Cookie c = new Cookie( "saveId" , inputEmail );
			
			if( req.getParameter("saveId") != null ) {
				c.setMaxAge(60 * 60 * 24 * 30);
				
			} else {
				c.setMaxAge(0);				
			}
			
			c.setPath( req.getContextPath() );
			
			resp.addCookie(c);
		
		} else { // 실패
			
			session.setAttribute("message", "아이디 또는 비밀번호가 일치하지 않습니다.");
		}
			
			resp.sendRedirect( req.getContextPath() );
			
		} catch(Exception e) {
			e.printStackTrace();
		}	
	}
}