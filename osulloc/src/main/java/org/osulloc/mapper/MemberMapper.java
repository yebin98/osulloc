package org.osulloc.mapper;

import org.osulloc.domain.MemberDTO;

public interface MemberMapper {
	
	//ȸ������
	public void insert(MemberDTO mdto);
	
	//�α���
	public MemberDTO login(MemberDTO mdto);
}
