package org.osulloc.mapper;

import java.util.ArrayList;

import org.osulloc.domain.Criteria;
import org.osulloc.domain.ProductReviewDTO;

public interface ProductReviewMapper {
	
	//리뷰 글쓰기
	public void write(ProductReviewDTO review);
	
	//게시판 글쓰기
	public void insertSelectKey(ProductReviewDTO review);
	
	//리뷰 목록리스트
	public ArrayList<ProductReviewDTO> productreview(ProductReviewDTO review);
	
	//리뷰 목록리스트 페이징
	public ArrayList<ProductReviewDTO> productcri(Criteria cri);
	
	//게사판 페이징에 쓰일 데이터건수
	public int getTotalCount(Criteria cri);
	
	//게시판 수정페이지
	public void modify(ProductReviewDTO review);
	
	//게시판 삭제페이지
	public void delete(ProductReviewDTO review);
	
	
}
