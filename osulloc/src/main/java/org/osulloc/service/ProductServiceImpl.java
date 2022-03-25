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
		//���û�ǰ
		public ArrayList<ProductDTO> product(ProductDTO prod) {
			return pmapper.product(prod);
		}
		
		//���ϻ�ǰ
		public ArrayList<ProductDTO> product2(ProductDTO prod) {
			return pmapper.product2(prod);
		}
		
		//��ǰ ���
		public void addProduct(ProductDTO product) {
			System.out.println("service="+product);
			pmapper.addProduct(product);
		}
		
		//��ǰ �������� select
		public ProductDTO productse(ProductDTO prod) {
			return pmapper.productse(prod);
		}
		
		//��ٱ��� select		
		public ArrayList<ProductDTO> product3se(ProductDTO prod) {
			return pmapper.product3se(prod);
		}
		
		//��ٱ��� insert
		public void product3in(ProductDTO prod) {
			pmapper.product3in(prod);
		}
		
		
		
		

		
}
