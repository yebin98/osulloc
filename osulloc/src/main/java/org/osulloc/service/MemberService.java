package org.osulloc.service;

import org.osulloc.domain.MemberDTO;

public interface MemberService {
	
		//ȸ������
		public void insert(MemberDTO mdto);
		
		//�α���
		public MemberDTO login(MemberDTO mdto);
		
}
