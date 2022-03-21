package org.osulloc.service;

import java.util.ArrayList;

import org.osulloc.domain.ProductDTO;
import org.osulloc.domain.ProductReviewDTO;

public interface ProductService {
	
	//���û�ǰ
	public ArrayList<ProductDTO> product(ProductDTO prod);
	
	//���ϻ�ǰ
	public ArrayList<ProductDTO> product2(ProductDTO prod);
	
	//��ٱ��� select
	public ArrayList<ProductDTO> product3se(ProductDTO prod);

	//��ٱ��� insert
	public void product3in(ProductDTO prod);
	
	//��ǰ �������� select
	public ProductDTO productse(ProductDTO prod);
	
	public void addProduct(ProductDTO product);


}
