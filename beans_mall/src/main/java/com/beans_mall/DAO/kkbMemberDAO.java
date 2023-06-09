package com.beans_mall.DAO;

import com.beans_mall.VO.MemberVO;

public interface kkbMemberDAO {

	// 회원가입
	public void memberJoin(MemberVO member);

	// 아이디 중복 검사
	public int idCheck(String memberId);

	// 로그인
	public MemberVO memberLogin(MemberVO member);

	// 회원 정보 조회
	public MemberVO getMemberInfo(String memberId);
}
