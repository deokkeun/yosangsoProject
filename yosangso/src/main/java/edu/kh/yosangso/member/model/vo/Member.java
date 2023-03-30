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
		
	private int memberNo;
	private String memberEmail;
	private String memberPw;
	private String memberPwcheck; // 비번확인 추가
	private String memberNickname;
	private String memberTel; // 휴대번호
	private String memberMail; // 이메일
	private String memberEmailcheck; // 이메일 인증번호
	private String memberAddress;
	private String profileImage;
	private String enrollDate;
	private String secessionFlag;
		
}