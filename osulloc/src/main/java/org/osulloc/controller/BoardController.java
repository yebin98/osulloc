package org.osulloc.controller;

import java.util.ArrayList;

import org.osulloc.domain.AttachFileDTO;
import org.osulloc.domain.BoardDTO;
import org.osulloc.domain.Criteria;
import org.osulloc.domain.PageDTO;
import org.osulloc.domain.PrevNextDTO;
import org.osulloc.service.BoardService;
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
public class BoardController {
	@Autowired
	private BoardService service;
	
	//글쓰기 화면으로
	@GetMapping("write")
	public void write() {}
	
	@PostMapping("write")
	public String writePost(BoardDTO board) {
		System.out.println(board);
		service.write(board);
		return "redirect:/page/detail?bno="+board.getBno();
	}
	
	//공지사항
	@GetMapping("noticeBoard")
	public void noticeBoard(Model model, Criteria cri) {
		model.addAttribute("list", service.noticeBoard(cri));
		int total = service.getTotalCount(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, service.getTotalCount(cri)));
	}

	//게시판 목록 리스트에서 제목을 클릭하면
	@GetMapping("detail")
	public void detail(BoardDTO board, Model model, PrevNextDTO pnBoard) {
		model.addAttribute("detail", service.detail(board));		
		model.addAttribute("detail2", service.detail2(pnBoard));
	}
	
	//게시판 상세페이지에서 이미지를 출력하기 위한 select된 결과를 javascript로
	@GetMapping(value="/fileList/{bno}",produces= MediaType.APPLICATION_JSON_UTF8_VALUE)//ajax
	public ResponseEntity<ArrayList<AttachFileDTO>> fileList(@PathVariable int bno){
		System.out.println(service.fileList(bno));
		return new ResponseEntity<>(service.fileList(bno),HttpStatus.OK);
	}
	
	//글 수정 화면으로
	@GetMapping("modify")
	public void modify(BoardDTO board, Model model) {
		model.addAttribute("detail", service.detail(board));
	}
	
	//글수정 버튼을 클릭하면
	@GetMapping("fileDelete")
	public String fileDelete(AttachFileDTO attach, BoardDTO board) {
		service.fileDelete(attach);
		System.out.println("boolean = " + service.fileDelete(attach));
		return "redirect:/page/modify?bno="+board.getBno();
	}
	
	@PostMapping("modify")
	public String modifyPost(BoardDTO board) {
		service.modify(board);
		return "redirect:/page/detail?bno="+board.getBno();
	}
	
	//글삭제 버튼을 클릭하면
	@GetMapping("remove")
	public String remove(BoardDTO board) {
		service.remove(board);
		return "redirect:/page/noticeBoard";
	}

}
