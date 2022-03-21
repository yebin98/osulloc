package org.osulloc.domain;

import java.util.ArrayList;

public class ProductDTO {
	
	
	private String petc;
	
	private boolean image;
	
	private String uuid;
	private String uploadpath;
	private String filename;
	
	private int prodnum;
	private String name;
	private String kind;
	private String scent;
	private String type;
	private String color;
	private int price;
	private int sale;
	private String regdate;
	
	private int number;



	public String getPetc() {
		return petc;
	}

	public void setPetc(String petc) {
		this.petc = petc;
	}

	public boolean isImage() {
		return image;
	}

	public void setImage(boolean image) {
		this.image = image;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getUploadpath() {
		return uploadpath;
	}

	public void setUploadpath(String uploadpath) {
		this.uploadpath = uploadpath;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getProdnum() {
		return prodnum;
	}

	public void setProdnum(int prodnum) {
		this.prodnum = prodnum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getScent() {
		return scent;
	}

	public void setScent(String scent) {
		this.scent = scent;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getSale() {
		return sale;
	}

	public void setSale(int sale) {
		this.sale = sale;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}
	
	

	@Override
	public String toString() {
		return "ProductDTO [petc=" + petc + ", image=" + image + ", uuid=" + uuid + ", uploadpath=" + uploadpath
				+ ", filename=" + filename + ", prodnum=" + prodnum + ", name=" + name + ", kind=" + kind + ", scent="
				+ scent + ", type=" + type + ", color=" + color + ", price=" + price + ", sale=" + sale + ", regdate="
				+ regdate + ", number=" + number + "]";
	}

	
	
	


	
}
