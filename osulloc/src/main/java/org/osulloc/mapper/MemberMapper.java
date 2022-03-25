package org.osulloc.mapper;

import org.osulloc.domain.MemberDTO;

public interface MemberMapper {
	
	//회원가입
	public void insert(MemberDTO mdto);
	
	//로그인
	public MemberDTO login(MemberDTO mdto);
}
