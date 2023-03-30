package edu.kh.yosangso.member.model.dao;

// 클래스, .* 불러서 쓸 때 객체화 시켜서 사용
import static edu.kh.yosangso.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import edu.kh.yosangso.member.model.vo.Member;


// MEMBER_NO 등에서 RS 사용할 때를 위해 미리 선언
public class MemberDAO {

	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Properties prop;
	
//	xml파일과 연결용으로 작성한 DAO
	
	public MemberDAO() {
		
		try {
			prop = new Properties();
			
			String filePath = MemberDAO.class.getResource("/edu/kh/yosangso/sql/member-sql.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch(Exception e) {
			e.printStackTrace();
		}	
	}
	
//	MemberDAO 기본 생성자 끝
//	로그인 DAO 시작
	
	/** 로그인 DAO
	 * @param conn
	 * @param mem
	 * @return result
	 * @throws Exception
	 */
	public Member login(Connection conn, Member mem) throws Exception {
		
//		멤버로 반환할거라, 변수 하나 만들어 놓은 것 
		Member loginMember = null;
		
		try {
//			member-sql.xml 의 key값에 있는걸 가져옴
			String sql = prop.getProperty("login");
			
//			conn으로 연결 + sql 실어서 연결
			pstmt = conn.prepareStatement(sql);
			
//			? 있는곳에 1,2 넣고 
//			mem에 있는걸 불러오기 위해 getter, setter 불러옴
			pstmt.setString(1, mem.getMemberEmail());
			pstmt.setString(2, mem.getMemberPw());
			
//			pstmt로 최종적으로 받아옴
			rs = pstmt.executeQuery();
			
			
//			기존 MEMBER 수업했던 객체들로 진행함!!
//			Member.java 기본과 Member-sql.xml DB 간 연결됨
			
			if( rs.next() ) {
				
				loginMember = new Member();
				
				loginMember.setMemberNo(   		rs.getInt("MEMBER_NO")   	 );
				loginMember.setMemberEmail( 	rs.getString("MEMBER_EMAIL") );
				loginMember.setMemberNickname( 	rs.getString("MEMBER_NICK")	 );
				loginMember.setMemberTel( 		rs.getString("MEMBER_TEL") 	 );
				loginMember.setMemberAddress( 	rs.getString("MEMBER_ADDR")  );
				loginMember.setProfileImage( 	rs.getString("PROFILE_IMG")  );
				loginMember.setEnrollDate( 		rs.getString("ENROLL_DT") 	 );
					
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return loginMember; 
	}
	
//	============================== 로그인 DAO 끝 ==============================
	
	public int signUp(Connection conn, Member mem) throws Exception {
		
		int result = 0;
		
		try {
			String sql = prop.getProperty("signUp");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mem.getMemberEmail());
			pstmt.setString(2, mem.getMemberPw());
			pstmt.setString(3, mem.getMemberPwcheck());
			pstmt.setString(4, mem.getMemberNickname());
			pstmt.setString(5, mem.getMemberMail());
			pstmt.setString(6, mem.getMemberEmailcheck());
			
			result = pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
//	================================ 회원가입 DAO 끝 ================================
}
