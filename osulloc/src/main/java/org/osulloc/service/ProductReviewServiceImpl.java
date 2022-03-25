package org.osulloc.service;

import java.util.ArrayList;

import org.osulloc.domain.Criteria;
import org.osulloc.domain.ProductReviewDTO;
import org.osulloc.mapper.ProductReviewMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductReviewServiceImpl implements ProductReviewService{
	@Autowired
	private ProductReviewMapper pmapper;
	
	//리뷰 글쓰기 설계된 것 구현
	public void write(ProductReviewDTO review) {
		pmapper.insertSelectKey(review);
	}
	
	//리뷰 목록리스트 설계된 것 구현
	public ArrayList<ProductReviewDTO> productreview(ProductReviewDTO review) {
		return pmapper.productreview(review);
	}
	
	//리뷰 목록리스트 페이징 설계된 것 구현
	public ArrayList<ProductReviewDTO> productcri(Criteria cri) {
		System.out.println("system productcri =" + pmapper.productcri(cri));
		return pmapper.productcri(cri);
	}
	
	//리뷰 페이징에 쓰일 데이터건수
	public int getTotalCount(Criteria cri) {
		return pmapper.getTotalCount(cri);
	}
	
	//리뷰 수정페이지
	public void modify(ProductReviewDTO review){
		pmapper.modify(review);
	};
		
	//리뷰 삭제페이지
	public void delete(ProductReviewDTO review) {
		pmapper.delete(review);
	}
}