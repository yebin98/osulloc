package org.osulloc.service;

import org.osulloc.domain.MemberDTO;

public interface MemberService {
	
		public void insert(MemberDTO mdto);

		public MemberDTO login(MemberDTO mdto);
		
}
