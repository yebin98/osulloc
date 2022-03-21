package org.osulloc.controller;

import javax.servlet.http.HttpSession;
//import javax.swing.plaf.synth.SynthSeparatorUI;

import org.osulloc.domain.MemberDTO;
import org.osulloc.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("member")
public class MemberController {
	@Autowired
	private MemberService mservice;
	
	@GetMapping("member")
	public void write() {
		System.out.println("member/member");
	} 
	@PostMapping("member")
	public void Postmember(MemberDTO mdto) {

		mservice.insert(mdto);
	}
	
	//濡쒓렇�씤 �솕硫� �씠�룞 
	@GetMapping("login")
	public void login() {
		System.out.println("member/login");
	} 

	
	@PostMapping("login")
	public String Postlogin(MemberDTO mdto,HttpSession session) {
		MemberDTO login=mservice.login(mdto);
		

		session.setAttribute("login", login);
		
		if(session.getAttribute("login")!=null) {
			
			return "redirect:/page/mainpage";
			
		}else {
			
			return "redirect:/member/member";
		}
	}

		@RequestMapping(value = "/logout", method = RequestMethod.GET)
		public String logout(HttpSession session) throws Exception{
			
			session.invalidate();
			
			return "redirect:/page/mainpage";
		}

		    }

