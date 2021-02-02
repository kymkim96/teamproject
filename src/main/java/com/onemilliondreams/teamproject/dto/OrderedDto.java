package com.onemilliondreams.teamproject.dto;

import java.util.List;

public class OrderedDto {
	//order
	private int oid;
	
	//order_items
	private String otid;
	private int otprice;
	private int otcount;
	private int ordersOid;
	private int otdiscount;
	private String booksIsbn;
	
	//book
	private String bimgFilename;
	private String bcontentType;
	private String bimgLink;
	private String btitle;
	private String bpublisher;
	private int bdeliveryFee;
	private int bfinalPrice;
	
	//writer
	private List<WriterDto> bookWriterlist;
	
	//user
	private String usersUaid;
	
	
	
	
	
	
	
	
	
	
	
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getOtid() {
		return otid;
	}
	public void setOtid(String otid) {
		this.otid = otid;
	}
	public int getOtprice() {
		return otprice;
	}
	public void setOtprice(int otprice) {
		this.otprice = otprice;
	}
	public int getOtcount() {
		return otcount;
	}
	public void setOtcount(int otcount) {
		this.otcount = otcount;
	}
	public int getOrdersOid() {
		return ordersOid;
	}
	public void setOrdersOid(int ordersOid) {
		this.ordersOid = ordersOid;
	}
	public int getOtdiscount() {
		return otdiscount;
	}
	public void setOtdiscount(int otdiscount) {
		this.otdiscount = otdiscount;
	}
	public String getBooksIsbn() {
		return booksIsbn;
	}
	public void setBooksIsbn(String booksIsbn) {
		this.booksIsbn = booksIsbn;
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
	public String getUsersUaid() {
		return usersUaid;
	}
	public void setUsersUaid(String usersUaid) {
		this.usersUaid = usersUaid;
	}
	
	
}
