package edu.kh.yosangso.board.model.dao;

import static edu.kh.yosangso.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import edu.kh.yosangso.board.model.vo.Board;

public class BoardDAO {

	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Properties prop;
	
	public BoardDAO() {
		try {
			prop = new Properties();
			
			String filePath = BoardDAO.class.getResource("/edu/kh/yosangso/sql/board-sql.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	/** 문의 등록 DAO
	 * @param conn
	 * @param content
	 * @return
	 * @throws Exception
	 */
	public int inquiryAdd(Connection conn, String content) throws Exception {
		
		// 리뷰 등록 sql 문 작성하기
		
		int result = 0;
		Board board = new Board();
		
		try {
			
			String sql = prop.getProperty("inquiryAdd");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(2, content);
			pstmt.setString(3, board.getMemberName());
			
			result = pstmt.executeUpdate();
			
		}finally{
			close(pstmt);
		}
		return result;
	}
	

	/** 게시물 삭제 DAO
	 * @param conn
	 * @param inputPw
	 * @return
	 * @throws Exception
	 */
	public int inquiryDelete(Connection conn, String inputPw) throws Exception {
		
		
		// 게시물 삭제 sql문 작성하기
		
		int result = 0;
		
		try {
			
			
			String sql = prop.getProperty("inquiryDelete");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, inputPw);
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	
	
	
	
	
	
	
	
}
