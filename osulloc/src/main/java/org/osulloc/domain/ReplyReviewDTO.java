package org.osulloc.domain;

public class ReplyReviewDTO {
	private int rno; // ��۹�ȣ
	private int pno; // �����ȣ 
	private String reply; // ��� ����
	private String replyer; // ��� �ۼ���
	private String replydate;  // ��� �ۼ�����
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getReplyer() {
		return replyer;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
	public String getReplydate() {
		return replydate;
	}
	public void setReplydate(String replydate) {
		this.replydate = replydate;
	}
	@Override
	public String toString() {
		return "ReplyReviewDTO [rno=" + rno + ", pno=" + pno + ", reply=" + reply + ", replyer=" + replyer
				+ ", replydate=" + replydate + "]";
	}
}
