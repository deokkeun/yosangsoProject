package edu.kh.yosangso.member.model.service;

import static edu.kh.yosangso.common.JDBCTemplate.*;

import java.sql.Connection;
// import java.util.List;

import edu.kh.yosangso.member.model.dao.MemberDAO;
import edu.kh.yosangso.member.model.vo.Member;

public class MemberService {

	private MemberDAO dao = new MemberDAO();
	
//	1. 로그인 서비스
	public Member login(Member mem) throws Exception {
		
		Connection conn = getConnection();
		
		Member loginMember = dao.login(conn, mem);
		
		close(conn);
		
		return loginMember;
		
	}

//	2. 회원가입 서비스
	public int signUp(Member mem) throws Exception {
		
		Connection conn = getConnection();
		
		int result = dao.signUp(conn, mem);
		
		if(result > 0) commit(conn);
		else 			rollback(conn);
		
		close(conn);
		
		return result;
	}		
}