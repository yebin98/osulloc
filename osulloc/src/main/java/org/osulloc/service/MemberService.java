package org.osulloc.service;

import org.osulloc.domain.MemberDTO;

public interface MemberService {
	
		//회원가입
		public void insert(MemberDTO mdto);
		
		//로그인
		public MemberDTO login(MemberDTO mdto);
		
}
