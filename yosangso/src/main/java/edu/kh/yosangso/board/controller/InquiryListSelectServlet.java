package edu.kh.yosangso.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** 사이드 nav 1:1 문의내역 조회 연결 써블릿 
 * @author lee
 *
 */
@WebServlet("/board/inquiryList")
public class InquiryListSelectServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String path = "/WEB-INF/views/board/inquiryList.jsp";
		
		req.getRequestDispatcher(path).forward(req, resp);

	
	}

}
