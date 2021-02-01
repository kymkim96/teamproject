package com.onemilliondreams.teamproject.dto;

public class BookWriterDto {

	private String booksIsbn;
	private int writersWid;
	
	
	public String getBooksIsbn() {
		return booksIsbn;
	}
	public int getWritersWid() {
		return writersWid;
	}
	public void setBooksIsbn(String booksIsbn) {
		this.booksIsbn = booksIsbn;
	}
	public void setWritersWid(int writersWid) {
		this.writersWid = writersWid;
	}
}
