package org.osulloc.mapper;

import java.util.ArrayList;

import org.osulloc.domain.Criteria;
import org.osulloc.domain.ProductReviewDTO;

public interface ProductReviewMapper {
	
	//���� �۾���
	public void write(ProductReviewDTO review);
	
	//�Խ��� �۾���
	public void insertSelectKey(ProductReviewDTO review);
	
	//���� ��ϸ���Ʈ
	public ArrayList<ProductReviewDTO> productreview(ProductReviewDTO review);
	
	//���� ��ϸ���Ʈ ����¡
	public ArrayList<ProductReviewDTO> productcri(Criteria cri);
	
	//�Ի��� ����¡�� ���� �����ͰǼ�
	public int getTotalCount(Criteria cri);
	
	//�Խ��� ����������
	public void modify(ProductReviewDTO review);
	
	//�Խ��� ����������
	public void delete(ProductReviewDTO review);
	
	
}
