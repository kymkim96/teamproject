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
	private int bdeliveryFee;
	private int bfinalPrice;
	private List<WriterDto> bookWriterlist;
	private int oid;
	private String usersUaid;
	public int getCtid() {
		return ctid;
	}
	public void setCtid(int ctid) {
		this.ctid = ctid;
	}
	public int getCtprice() {
		return ctprice;
	}
	public void setCtprice(int ctprice) {
		this.ctprice = ctprice;
	}
	public int getCtcount() {
		return ctcount;
	}
	public void setCtcount(int ctcount) {
		this.ctcount = ctcount;
	}
	public int getCtdiscount() {
		return ctdiscount;
	}
	public void setCtdiscount(int ctdiscount) {
		this.ctdiscount = ctdiscount;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getBimgFilename() {
		return bimgFilename;
	}
	public void setBimgFilename(String bimgFilename) {
		this.bimgFilename = bimgFilename;
	}
	public String getBcontentType() {
		return bcontentType;
	}
	public void setBcontentType(String bcontentType) {
		this.bcontentType = bcontentType;
	}
	public String getBimgLink() {
		return bimgLink;
	}
	public void setBimgLink(String bimgLink) {
		this.bimgLink = bimgLink;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBpublisher() {
		return bpublisher;
	}
	public void setBpublisher(String bpublisher) {
		this.bpublisher = bpublisher;
	}
	public int getBdeliveryFee() {
		return bdeliveryFee;
	}
	public void setBdeliveryFee(int bdeliveryFee) {
		this.bdeliveryFee = bdeliveryFee;
	}
	public int getBfinalPrice() {
		return bfinalPrice;
	}
	public void setBfinalPrice(int bfinalPrice) {
		this.bfinalPrice = bfinalPrice;
	}
	public List<WriterDto> getBookWriterlist() {
		return bookWriterlist;
	}
	public void setBookWriterlist(List<WriterDto> bookWriterlist) {
		this.bookWriterlist = bookWriterlist;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getUsersUaid() {
		return usersUaid;
	}
	public void setUsersUaid(String usersUaid) {
		this.usersUaid = usersUaid;
	}
	
	
}
