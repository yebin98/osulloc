package org.osulloc.service;

import java.util.ArrayList;

import org.osulloc.domain.ProductDTO;
import org.osulloc.domain.ProductReviewDTO;
import org.osulloc.mapper.ProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductMapper pmapper;
		//선택상품
		public ArrayList<ProductDTO> product(ProductDTO prod) {
			return pmapper.product(prod);
		}
		
		//세일상품
		public ArrayList<ProductDTO> product2(ProductDTO prod) {
			return pmapper.product2(prod);
		}
		
		//제품 등록
		public void addProduct(ProductDTO product) {
			System.out.println("service="+product);
			pmapper.addProduct(product);
		}
		
		//제품 상세페이지 select
		public ProductDTO productse(ProductDTO prod) {
			return pmapper.productse(prod);
		}
		
		//장바구니 select		
		public ArrayList<ProductDTO> product3se(ProductDTO prod) {
			return pmapper.product3se(prod);
		}
		
		//장바구니 insert
		public void product3in(ProductDTO prod) {
			pmapper.product3in(prod);
		}
		
		
		
		

		
}
