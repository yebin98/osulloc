package org.osulloc.service;

import java.util.ArrayList;

import org.osulloc.domain.AttachFileDTO;
import org.osulloc.domain.BoardDTO;
import org.osulloc.domain.Criteria;
import org.osulloc.domain.PrevNextDTO;

public interface BoardService { 
	//�Խ��� �۾���
	public void write(BoardDTO board);
	
	//�Խ��� ��ϸ���Ʈ
	public ArrayList<BoardDTO> noticeBoard(Criteria cri);

	//�Խ��� ��ϸ���Ʈ���� ������ Ŭ������ �� ������ ������ ��������
	public BoardDTO detail(BoardDTO board);
	
	public PrevNextDTO detail2(PrevNextDTO pnBoard);
	
	//�Խ��� ����������
	public void modify(BoardDTO board);
	
	//�Խ��� ����������
	public void remove(BoardDTO board);
	
	//�Ի��� ����¡�� ���� �����ͰǼ�
	public int getTotalCount(Criteria cri);
	
	//�Խ��� ���������� ���Ͼ��ε�� �̹��� ���
	public ArrayList<AttachFileDTO> fileList(int bno);
	
	public ArrayList<AttachFileDTO> fileListPost(int bno);
	

	public void delete(AttachFileDTO aboard);

	
	public boolean fileDelete(AttachFileDTO attach);


	
}
