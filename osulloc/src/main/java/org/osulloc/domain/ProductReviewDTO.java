package org.osulloc.domain;

import java.util.ArrayList;

public class ProductReviewDTO {	
	private int pno;
	private String writer;
	private String title;
	private String content;
	private String regdate;	
	private int prodnum;
	private ArrayList<AttachFileDTO> attachList;
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getProdnum() {
		return prodnum;
	}
	public void setProdnum(int prodnum) {
		this.prodnum = prodnum;
	}
	public ArrayList<AttachFileDTO> getAttachList() {
		return attachList;
	}
	public void setAttachList(ArrayList<AttachFileDTO> attachList) {
		this.attachList = attachList;
	}
	@Override
	public String toString() {
		return "ProductReviewDTO [pno=" + pno + ", writer=" + writer + ", title=" + title + ", content=" + content
				+ ", regdate=" + regdate + ", prodnum=" + prodnum + ", attachList=" + attachList
				+ "]";
	}
	
}
