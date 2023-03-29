package edu.kh.yosangso.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

// Lombok 라이브러리

@Data
	public class Member {
		
		private int memberNo; // 회원번호
		private String memberEmail; // 이메일 ???
		private String memberId; // 아이디
		private String memberPw; // 비밀번호
		private String memberPwcheck; // 비밀번호 확인 ??? 
		private String email; // 이메일+이메일 인증
		private int emailCert; // 이메일 인증번호4확인 ???
		private String memberNm; // 이름
		private String address; // 주소
		private int phone; // 전화번호
		private String enrollmentDate; // 가입일
		private String secession; // 탈퇴여부
		private String memberNick; // 닉네임
		
}