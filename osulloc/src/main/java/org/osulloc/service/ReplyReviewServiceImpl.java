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
	//��� ���� ����� ���� ����
	public int write(ReplyReviewDTO rdto) {
		return rmapper.write(rdto);
	}
	//��� ��� ����Ʈ ����� ���� ����
	public ArrayList<ReplyReviewDTO> list(int pno) {
		return rmapper.list(pno);
	}
	
	//��� ������ �ϱ� ���� ��� ������ �������¼��踦 ����
	public ReplyReviewDTO detail(int rno) {
		return rmapper.detail(rno);
	}
	
	//��� ���� ����� ���� ����
	public int update(ReplyReviewDTO rdto) {
		return rmapper.update(rdto);
	}
	
	//��� ���� ����� ���� ����
	public int remove(ReplyReviewDTO rdto) {
		return rmapper.remove(rdto);
	}
}
