package org.osulloc.service;

import java.util.ArrayList;

import org.osulloc.domain.AttachFileDTO;
import org.osulloc.domain.BoardDTO;
import org.osulloc.domain.Criteria;
import org.osulloc.domain.PrevNextDTO;
import org.osulloc.mapper.AttachMapper;
import org.osulloc.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BoardServiceImpl implements BoardService{ 
	@Autowired
	private BoardMapper bmapper;
	
	@Autowired
	private AttachMapper amapper;
	
	//게시판 글쓰기 설계된 것 구현
	@Transactional
	public void write(BoardDTO board) {
		bmapper.insertSelectKey(board);
		if(board.getAttachList() != null) {
			board.getAttachList().forEach(attach->{
				attach.setBno(board.getBno());
				amapper.insert(attach);
			});
		}else {
			System.out.println("사진을 선택하세요.");
		}	
	}
	
	//게시판 목록리스트 설계된 것 구현
	public ArrayList<BoardDTO> noticeBoard(Criteria cri) {
		return bmapper.noticeBoard(cri);
	}

	@Transactional
	//게시판 목록리스트에서 제목을 클릭했을 때 내용이 나오는 상세페이지 설계된 것을 구현
	public BoardDTO detail(BoardDTO board) {
		//board테이블에 조회수 속성에 +1
		bmapper.cntupdate(board);
		return bmapper.detail(board);
	}
	
	//게시판 이전 다음 글
	public PrevNextDTO detail2(PrevNextDTO pnBoard) {
		return bmapper.detail2(pnBoard);
	}
	
	//게시판 글수정 설계된 것 구현
	@Transactional
	public void modify(BoardDTO board) {
		bmapper.modify(board);
	}
	
	//게시판 글삭제 설계된 것 구현
	public void remove(BoardDTO board) {
		bmapper.remove(board);
	}
	
	//게사판 페이징에 쓰일 데이터건수
	public int getTotalCount(Criteria cri) {
		return bmapper.getTotalCount(cri);
	}
	
	//게시판 상세페이지에 파일업로드된 이미지 출력하는 것을 구현
	public ArrayList<AttachFileDTO> fileList(int bno){
		return amapper.fileList(bno);
	}
	
	public ArrayList<AttachFileDTO> fileListPost(int bno){
		return amapper.fileListPost(bno);
	}

	//게시판 이미지 삭제
	public void delete(AttachFileDTO aboard) {
		 amapper.delete(aboard);
	}

	public boolean fileDelete(AttachFileDTO attach) {
		return amapper.fileDelete(attach);
	}
}
