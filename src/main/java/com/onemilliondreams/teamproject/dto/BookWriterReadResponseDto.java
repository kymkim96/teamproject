package com.onemilliondreams.teamproject.dto;

public class BookWriterReadResponseDto {

	private String isbn;
	private int wid;
	private String wname;
	
	public String getIsbn() {
		return isbn;
	}
	public String getWname() {
		return wname;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public void setWname(String wname) {
		this.wname = wname;
	}
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
}
