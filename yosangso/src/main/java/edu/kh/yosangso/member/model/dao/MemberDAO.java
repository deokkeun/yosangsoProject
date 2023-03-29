package edu.kh.yosangso.member.model.dao;

import static edu.kh.yosangso.common.JDBCTemplate.*;
// 클래스, .* 불러서 쓸 때 객체화 시켜서 사용

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
	
	public Member login(Connection conn, Member mem) throws Exception {
		
//		멤버로 반환할거라, 변수 하나 만들어 놓은 것 
		Member loginMember = null;
		
		try {
//			xml key값에 있는걸 가져옴
			String sql = prop.getProperty("login");
			
//			conn으로 연결 sql 실어서 연결
			pstmt = conn.prepareStatement(sql);
			
//			? 있는곳에 1,2 넣고 
//			mem에 있는걸 불러오기 위해 getter, setter 불러옴
			pstmt.setString(1, mem.getMemberEmail());
			pstmt.setString(2, mem.getMemberPw());
			
//			pstmt로 최종적으로 받아옴
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				
				loginMember = new Member();
				
				/* private int memberNo; // 회원번호
				private String memberId; // 아이디
				private String memberPw; // 비밀번호
				private String email; // 이메일
				private String memberNm; // 이름
				private String address; // 주소
				private int phone; // 전화번호
				private String enrollmentDate; // 가입일
				private String secession; // 탈퇴여부
				private String memberNick; // 닉네임 */	
				
				/* loginMember.setMemberNo( rs.getInt("MEMBER_NO") );
				loginMember.setMemberId( rs.getInt("MEMBER_ID") );
				loginMember.setMemberPw( rs.getInt("MEMBER_PW") );
				loginMember.setEmail( rs.getInt("EMAIL") );
				loginMember.setMemberNm( rs.getInt("MEMBER_NM") );
				loginMember.setAddress( rs.getInt("ADDRESS") );
				loginMember.setPhone( rs.getInt("PHONE") );
				loginMember.setEnrollmentDate( rs.getInt("ENROLLMENT_DATE") );
				loginMember.setEnrollSecession( rs.getInt("SECESSION") );
				loginMember.setEnrollMemberNick( rs.getInt("MEMBER_NICK") );
				*/
				
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return loginMember; 
	}
	
	
	
	
	
	
	
	
	
}
