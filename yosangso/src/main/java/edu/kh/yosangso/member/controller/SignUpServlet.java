package edu.kh.yosangso.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.kh.yosangso.member.model.service.MemberService;
import edu.kh.yosangso.member.model.vo.Member;

@WebServlet("/member/signUp")
public class SignUpServlet extends HttpServlet{
	
	// 회원가입 응답
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String path = "/WEB-INF/views/member/signUp.jsp";
		
		req.getRequestDispatcher(path).forward(req, resp);
	}
	
	// 회원가입 요청
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	// Member.java 요생소 용으로 얻어오는것 다시 확인하기
		
	String memberEmail = req.getParameter("memberEmail"); // 아이디
	String memberPw = req.getParameter("memberPw"); // 비밀번호
	String memberPwcheck = req.getParameter("memberPwcheck"); // 비밀번호 확인
	String memberNickname = req.getParameter("memberNickname"); // 이름
	String memberMail = req.getParameter("memberMail"); // 이메일
	String memberEmailcheck = req.getParameter("memberEmailcheck"); // 이메일 인증번호
		
		
	// 주소는 요생소에 없었으니, 다른 요소들로 넣었을 때 오류 나는지 안나는지 확인할 것!!!
		
	// 멤버객체 저장
	Member mem = new Member();
	
	mem.setMemberEmail(memberEmail);
	mem.setMemberPw(memberPw);
	mem.setMemberPwcheck(memberPwcheck);
	mem.setMemberNickname(memberNickname);
	mem.setMemberMail(memberMail);
	mem.setMemberEmailcheck(memberEmailcheck);
	
//	MemberService 넘어갔다와서 작성
	try {
		MemberService service = new MemberService();
		
//		회원가입 서비스 호출
		int result = service.signUp(mem);
		
//		결과에 따른 메세지, 페이지 재요청
		HttpSession session = req.getSession();
		
		if(result > 0) { // 성공
			session.setAttribute("message", "회원 가입 성공");
		
		} else { // 실패
			session.setAttribute("message", "회원 가입 실패");
		
			resp.sendRedirect(memberEmailcheck);
	}
		
	} catch(Exception e) {
		e.printStackTrace();
	}
	
  }
}