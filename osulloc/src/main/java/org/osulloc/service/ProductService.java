package org.osulloc.service;

import java.util.ArrayList;

import org.osulloc.domain.ProductDTO;
import org.osulloc.domain.ProductReviewDTO;

public interface ProductService {
	
	//선택상품
	public ArrayList<ProductDTO> product(ProductDTO prod);
	
	//세일상품
	public ArrayList<ProductDTO> product2(ProductDTO prod);
	
	//제품 등록
	public void addProduct(ProductDTO product);
	
	//제품 상세페이지 select
	public ProductDTO productse(ProductDTO prod);

	//장바구니 select
	public ArrayList<ProductDTO> product3se(ProductDTO prod);

	//장바구니 insert
	public void product3in(ProductDTO prod);

}
