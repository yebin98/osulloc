package org.osulloc.service;

import java.util.ArrayList;

import org.osulloc.domain.ReplyReviewDTO;

public interface ReplyReviewService {
	//댓글 쓰기 설계
	public int write(ReplyReviewDTO rdto);
	//댓글 목록 리스트 설계
	public ArrayList<ReplyReviewDTO> list(int pno);
	//댓글 수정을 하기 위해 댓글 내용을 가져오는설계
	public ReplyReviewDTO detail(int rno);
	//댓글 수정 설계
	public int update(ReplyReviewDTO rdto);
	//댓글 삭제 설계
	public int remove(ReplyReviewDTO rdto);
}
