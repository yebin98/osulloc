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
	

		public ArrayList<ProductDTO> product(ProductDTO prod) {
			return pmapper.product(prod);
		}
		
		public ArrayList<ProductDTO> product2(ProductDTO prod) {
			return pmapper.product2(prod);
		}
		
		public ArrayList<ProductDTO> product3se(ProductDTO prod) {
			return pmapper.product3se(prod);
		}
		
		public void product3in(ProductDTO prod) {
			pmapper.product3in(prod);
		}
		
		//力前 惑技其捞瘤 select
		public ProductDTO productse(ProductDTO prod) {
			
			return pmapper.productse(prod);
			
		}

		
		public void addProduct(ProductDTO product) {
			System.out.println("service="+product);
			
			pmapper.addProduct(product);

			
		}
		

		
}
