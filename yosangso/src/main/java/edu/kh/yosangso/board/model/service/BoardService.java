package edu.kh.yosangso.board.model.service;

import java.sql.Connection;

import edu.kh.yosangso.board.model.dao.BoardDAO;
import static edu.kh.yosangso.common.JDBCTemplate.*;

public class BoardService {

	private BoardDAO dao = new BoardDAO();
	
	/** 문의 등록 서비스
	 * @param content
	 * @return
	 * @throws Exception
	 */
	public int inquiryAdd(String content) throws Exception {
		
		Connection conn = getConnection();
		
		int result = 0;
		
		
		
		result = dao.inquiryAdd(conn, content);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
			result = 0;
		}
		
		close(conn);
		
		return result;
	}

	
	
	/** 문의 삭제 서비스
	 * @param inputPw
	 * @return
	 */
	public int inquiryDelte(String inputPw) throws Exception{
		
		Connection conn = getConnection();
		int result = 0;
		
		result = dao.inquiryDelete(conn, inputPw);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
			result = 0;
		}
		
		close(conn);
		
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
