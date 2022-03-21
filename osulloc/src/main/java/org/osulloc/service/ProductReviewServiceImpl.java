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
	
	//�Խ��� �۾��� ����� �� ����
	public void write(ProductReviewDTO review) {
		pmapper.insertSelectKey(review);
	}
	
	//���� ��ϸ���Ʈ ����� �� ����
	public ArrayList<ProductReviewDTO> productreview(ProductReviewDTO review) {
		return pmapper.productreview(review);
	}
	
	//���� ��ϸ���Ʈ ����¡ ����� �� ����
	public ArrayList<ProductReviewDTO> productcri(Criteria cri) {
		
		System.out.println(pmapper.productcri(cri));
		return pmapper.productcri(cri);
	}
	
	//���� ����¡�� ���� �����ͰǼ�
	public int getTotalCount(Criteria cri) {
		return pmapper.getTotalCount(cri);
	}
	
	//�Խ��� ����������
	public void modify(ProductReviewDTO review){
		pmapper.modify(review);
	};
		
	//�Խ��� ����������
	public void delete(ProductReviewDTO review) {
		pmapper.delete(review);
	}
	
	
}
