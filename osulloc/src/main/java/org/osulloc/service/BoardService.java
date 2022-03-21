package org.osulloc.service;

import java.util.ArrayList;

import org.osulloc.domain.AttachFileDTO;
import org.osulloc.domain.BoardDTO;
import org.osulloc.domain.Criteria;
import org.osulloc.domain.PrevNextDTO;

public interface BoardService { 
	//게시판 글쓰기
	public void write(BoardDTO board);
	
	//게시판 목록리스트
	public ArrayList<BoardDTO> noticeBoard(Criteria cri);

	//게시판 목록리스트에서 제목을 클릭했을 때 내용이 나오는 상세페이지
	public BoardDTO detail(BoardDTO board);
	
	public PrevNextDTO detail2(PrevNextDTO pnBoard);
	
	//게시판 수정페이지
	public void modify(BoardDTO board);
	
	//게시판 삭제페이지
	public void remove(BoardDTO board);
	
	//게사판 페이징에 쓰일 데이터건수
	public int getTotalCount(Criteria cri);
	
	//게시판 상세페이지에 파일업로드된 이미지 출력
	public ArrayList<AttachFileDTO> fileList(int bno);
	
	public ArrayList<AttachFileDTO> fileListPost(int bno);
	

	public void delete(AttachFileDTO aboard);

	
	public boolean fileDelete(AttachFileDTO attach);


	
}
