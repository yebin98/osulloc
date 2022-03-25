package org.osulloc.controller;


import org.osulloc.domain.ProductDTO;
import org.osulloc.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("page")
public class MainController {
	
	@Autowired
	private ProductService service;
	
	@GetMapping("mainpage")
	public void mainpage(Model model, ProductDTO prod) {
		//선택상품
		model.addAttribute("product", service.product(prod));
		System.out.println("maincontroller1="+service.product(prod));
		
		//세일상품
		model.addAttribute("product2", service.product2(prod));
		System.out.println("maincontroller2="+service.product2(prod));
	}
	
	//매거진
	@GetMapping("subpage")
	public void subpage() {
	}
	
	//장바구니
	@GetMapping("cartPage")
	public void cartpagePost(Model model, ProductDTO prod) {
		model.addAttribute("product3", service.product3se(prod));
	}
	
	@PostMapping("mainpage")
	public String mainpagePost(ProductDTO prod) {
		service.product3in(prod);
		System.out.println("장바구니에 담겼습니다.");
		return "redirect:/page/cartPage";
	}

}


