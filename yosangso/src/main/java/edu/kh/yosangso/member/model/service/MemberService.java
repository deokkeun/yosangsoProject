package edu.kh.yosangso.member.model.service;

import static edu.kh.yosangso.common.JDBCTemplate.*;

import java.sql.Connection;
// import java.util.List;

import edu.kh.yosangso.member.model.dao.MemberDAO;
import edu.kh.yosangso.member.model.vo.Member;

public class MemberService {

	private MemberDAO dao = new MemberDAO();
	
	public Member login(Member mem) throws Exception {
		
		Connection conn = getConnection();
		
//		dao안에 메서드 로그인
		Member loginMember = dao.login(conn, mem);
		
		close(conn);
		
		return loginMember;
		
	}		
}