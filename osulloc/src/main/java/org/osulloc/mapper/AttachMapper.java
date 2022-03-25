package org.osulloc.mapper;

import java.util.ArrayList;

import org.osulloc.domain.AttachFileDTO;

public interface AttachMapper {
	//�Խ��� �۾��� �� �� ���ϰ� ���õǾ� �ִ� attach���̺��� insert
	public void insert(AttachFileDTO board);
	
	//���� ����
	public void delete(AttachFileDTO aboard);
	
	//�Խ��� ���������� ���ε�� �̹����� �Ѹ������� ������list
	public ArrayList<AttachFileDTO> fileList(int bno);
	
	public boolean fileDelete(AttachFileDTO attach);
	
	public ArrayList<AttachFileDTO> fileListPost(int bno);
}
