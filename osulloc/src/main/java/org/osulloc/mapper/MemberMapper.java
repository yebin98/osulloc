package org.osulloc.mapper;

import org.osulloc.domain.MemberDTO;

public interface MemberMapper {

	public void insert(MemberDTO mdto);
	public MemberDTO login(MemberDTO mdto);
}
