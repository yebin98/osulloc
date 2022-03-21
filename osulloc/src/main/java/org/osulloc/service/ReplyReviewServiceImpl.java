package org.osulloc.service;

import java.util.ArrayList;

import org.osulloc.domain.ReplyReviewDTO;
import org.osulloc.mapper.ReplyReviewMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReplyReviewServiceImpl implements ReplyReviewService{
	@Autowired
	private ReplyReviewMapper rmapper;
	//댓글 쓰기 설계된 것을 구현
	public int write(ReplyReviewDTO rdto) {
		return rmapper.write(rdto);
	}
	//댓글 목록 리스트 설계된 것을 구현
	public ArrayList<ReplyReviewDTO> list(int pno) {
		return rmapper.list(pno);
	}
	
	//댓글 수정을 하기 위해 댓글 내용을 가져오는설계를 구현
	public ReplyReviewDTO detail(int rno) {
		return rmapper.detail(rno);
	}
	
	//댓글 수정 설계된 것을 구현
	public int update(ReplyReviewDTO rdto) {
		return rmapper.update(rdto);
	}
	
	//댓글 삭제 설계된 것을 구현
	public int remove(ReplyReviewDTO rdto) {
		return rmapper.remove(rdto);
	}
}
