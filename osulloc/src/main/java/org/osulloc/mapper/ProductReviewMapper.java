package org.osulloc.mapper;

import java.util.ArrayList;

import org.osulloc.domain.Criteria;
import org.osulloc.domain.ProductReviewDTO;

public interface ProductReviewMapper {
	
	//���� �۾���
	public void write(ProductReviewDTO review);
	
	//���� �۾���
	public void insertSelectKey(ProductReviewDTO review);
	
	//���� ��ϸ���Ʈ
	public ArrayList<ProductReviewDTO> productreview(ProductReviewDTO review);
	
	//���� ��ϸ���Ʈ ����¡
	public ArrayList<ProductReviewDTO> productcri(Criteria cri);
	
	//���� ����¡�� ���� �����ͰǼ�
	public int getTotalCount(Criteria cri);
	
	//���� ����������
	public void modify(ProductReviewDTO review);
	
	//���� ����������
	public void delete(ProductReviewDTO review);
}
