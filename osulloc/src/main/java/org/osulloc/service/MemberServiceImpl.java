package org.osulloc.service;

import org.osulloc.domain.MemberDTO;
import org.osulloc.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl  implements MemberService{

	@Autowired
	private MemberMapper mmapper;
	
	//회원가입
	public void insert(MemberDTO mdto) {
		mmapper.insert(mdto);
	}
	
	//로그인
	public MemberDTO login(MemberDTO mdto) {
		return mmapper.login(mdto);
		}
	}
	

