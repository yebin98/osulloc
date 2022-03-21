package org.osulloc.controller;

import java.util.ArrayList;

import org.osulloc.domain.ReplyReviewDTO;
import org.osulloc.service.ReplyReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("replies")
public class ReplyReviewController {
	@Autowired 
	private ReplyReviewService rservice;

	//.jsp������ ���� ������ �̷��� �ۼ��Ѵ�.
	@PostMapping(value="new",consumes="application/json",produces= {MediaType.TEXT_PLAIN_VALUE})//MediaType.TEXT_PLAIN_VALUE:���ڿ��� ��ȯ�ض�
	public ResponseEntity<String> create(@RequestBody ReplyReviewDTO rdto){
		System.out.println("ReplyReviewDTO="+rdto);
		//insert ������ ReplyServiceImpl.java�� ���� 1,
		//insert ���н� ReplyServiceImpl.java�� ���� 0
		//���� ���Ϲ޴´�.
		int result = rservice.write(rdto);
		System.out.println("ReplyReviewDTO2222=" + rdto);
								//insert�� ���������� ó���Ǿ��� �� 1          :              insert�� ������������ ó���Ǿ��� �� 0 
								// detail.js�� success�� ����                                                            detail.js�� error�� ����
		return result==1?new ResponseEntity<>("success",HttpStatus.OK):new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		//��Ż��¿� �Բ� ���ڿ��� detail.js�� success(result)�� ������.
		//<String>�� "success"Ÿ���� ��ġ
	}
	@GetMapping(value="list/{pno}",produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})//produces="select�� ����� ��ȯ�� Ÿ��"
	public ResponseEntity<ArrayList<ReplyReviewDTO>> getList(@PathVariable int pno){//ReplyDTOŸ������ �� ����� return�ض� 
													//@PathVariable : Rest��Ŀ��� �ַ� ���. url����� �Ϻθ� �Ķ����(����) ����ϰ��� �� �� �ۼ��Ѵ�. ����� ��� �������� ���ƾ� �Ѵ�.
		System.out.println(pno);
		return new ResponseEntity<>(rservice.list(pno),HttpStatus.OK);//�ڹٽ�ũ��Ʈ�� sucess�κ����� ����.//"success"�� StringŸ������, ������ ReplyDTOŸ���̿��� ������ ����.
		//<ArrayList<ReplyDTO>>Ÿ�԰� rservice.list(bno)�� ��ġ
	}
	//��� ������ �ϱ� ���� ��� ���� �������� �Լ� ����
	@GetMapping(value="{rno}",produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ReplyReviewDTO> getDetail(@PathVariable int rno){
		System.out.println("rrrrrno = " + rno);
		return new ResponseEntity<>(rservice.detail(rno),HttpStatus.OK);
	}
	
	@PutMapping(value="update",consumes="application/json",produces= {MediaType.TEXT_PLAIN_VALUE})//���� value���� ����ص� �ȴ�. insert==update
	public ResponseEntity<String> update(@RequestBody ReplyReviewDTO rdto){//��� ��ȣ, ��� ����
		System.out.println("rdto="+rdto);//rdto�� rno�� �ֱ� ������ rno�� ������� �ʾƵ� �ȴ�. 
		
		return rservice.update(rdto)==1?new ResponseEntity<>("success",HttpStatus.OK)://update�� ���������� ó���Ǿ��� ��
										new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);//update�� ������������ ó���Ǿ��� ��
	}
	@DeleteMapping(value="remove",consumes="application/json",produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@RequestBody ReplyReviewDTO rdto){//��� ��ȣ, ��� ����
		//System.out.println("rdto="+rdto);//rdto�� rno�� �ֱ� ������ rno�� ������� �ʾƵ� �ȴ�.
		return rservice.remove(rdto)==1?new ResponseEntity<>("success",HttpStatus.OK)://remove�� ���������� ó���Ǿ��� ��
										new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);	//remove�� ������������ ó���Ǿ��� ��
	}

}
