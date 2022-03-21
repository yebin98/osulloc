package org.osulloc.controller;

import java.util.ArrayList;


import org.osulloc.domain.Criteria;
import org.osulloc.domain.PageDTO;
import org.osulloc.domain.ProductDTO;
import org.osulloc.domain.ProductReviewDTO;
import org.osulloc.service.ProductReviewService;
import org.osulloc.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("page")
public class ProductReviewController {
	@Autowired
	private ProductReviewService pservice;
	
	@Autowired
	private ProductService service;

	//����۾��� ȭ������
	@GetMapping("reviewWrite")
	public void reviewWrite(Model model, ProductDTO prod) {
		model.addAttribute("productse", service.productse(prod));
	}
	
	//�۾��� ��ư�� Ŭ���ϸ�
	@PostMapping("reviewWrite")
	public String reviewWritePost(ProductReviewDTO review) {
		System.out.println("getprod1=" + review);
		System.out.println("getprod2=" + review.getProdnum());
		pservice.write(review);
		
		
		return "redirect:/page/detailProduct?prodnum="+review.getProdnum();
	}
	
	@GetMapping("detailProduct")
	public void detailProduct(Model model, Criteria cri, ProductDTO prod) {
		

		System.out.println(prod);
		
		model.addAttribute("productse", service.productse(prod));

		
		//����
		
		System.out.println("prodnum=" + pservice.productcri(cri));
		model.addAttribute("productcri", pservice.productcri(cri));

		
		int total = pservice.getTotalCount(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, pservice.getTotalCount(cri)));
		
		
	}

	
	@PostMapping("detailProduct")
	public String detailProductPost(ProductDTO prod) {
		
		System.out.println("��ٱ��ϸ��=" + prod );
		
		service.product3in(prod);
		
		System.out.println("��ٱ��Ͽ� �����ϴ�.");
		
		return "redirect:/page/cartPage";
	}
	
	//�� ���� ȭ������
	@GetMapping("reviewModify")
	public void reviewModify(ProductReviewDTO review, Model model, ProductDTO prod) {		
		System.out.println("pno="+review.getPno());
		model.addAttribute("pno", review.getPno());
		
		model.addAttribute("productse", service.productse(prod));
		model.addAttribute("productreview", pservice.productreview(review));
		
	}
	
	//�ۼ��� ��ư�� Ŭ���ϸ�
	@PostMapping("reviewModify")
	public String reviewModifyPost(ProductReviewDTO review) {
		
		pservice.modify(review);
	
		System.out.println("reviewModify ������ �Ϸ��");
		
		return "redirect:/page/detailProduct?prodnum="+review.getProdnum();
	}
	
	//�ۻ��� ��ư�� Ŭ���ϸ�
	@GetMapping("reviewdelete")
	public String reviewdelete(ProductReviewDTO review) {
		pservice.delete(review);
		
		return "redirect:/page/detailProduct?prodnum="+review.getProdnum();
	}
}
