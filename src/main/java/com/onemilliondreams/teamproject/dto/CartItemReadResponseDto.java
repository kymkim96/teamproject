package com.onemilliondreams.teamproject.dto;

import java.util.List;

public class CartItemReadResponseDto {

	private int ctid;
	private int ctprice;
	private int ctcount;
	private int ctdiscount;
	private String isbn;
	private String bimgFilename;
	private String bcontentType;
	private String bimgLink;
	private String btitle;
	private String bpublisher;
	private List<WriterDto> bookWriterlist;
	
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public int getCtid() {
		return ctid;
	}
	public int getCtprice() {
		return ctprice;
	}
	public int getCtcount() {
		return ctcount;
	}
	public int getCtdiscount() {
		return ctdiscount;
	}
	public String getBimgFilename() {
		return bimgFilename;
	}
	public String getBcontentType() {
		return bcontentType;
	}
	public String getBimgLink() {
		return bimgLink;
	}
	public String getBtitle() {
		return btitle;
	}
	public String getBpublisher() {
		return bpublisher;
	}
	public void setCtid(int ctid) {
		this.ctid = ctid;
	}
	public void setCtprice(int ctprice) {
		this.ctprice = ctprice;
	}
	public void setCtcount(int ctcount) {
		this.ctcount = ctcount;
	}
	public void setCtdiscount(int ctdiscount) {
		this.ctdiscount = ctdiscount;
	}
	public void setBimgFilename(String bimgFilename) {
		this.bimgFilename = bimgFilename;
	}
	public void setBcontentType(String bcontentType) {
		this.bcontentType = bcontentType;
	}
	public void setBimgLink(String bimgLink) {
		this.bimgLink = bimgLink;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public void setBpublisher(String bpublisher) {
		this.bpublisher = bpublisher;
	}
	public List<WriterDto> getBookWriterlist() {
		return bookWriterlist;
	}
	public void setBookWriterlist(List<WriterDto> bookWriterlist) {
		this.bookWriterlist = bookWriterlist;
	}
}
