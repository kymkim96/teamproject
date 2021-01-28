package com.onemilliondreams.teamproject.dto;

public class CartItemDto {

	private int ctid;
	private int ctprice;
	private int ctcount;
	private int ctdiscount;
	private String booksIsbn;
	private String orderItemsOtid;
	
	
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
	public String getBooksIsbn() {
		return booksIsbn;
	}
	public String getOrderItemsOtid() {
		return orderItemsOtid;
	}
	public void setBooksIsbn(String booksIsbn) {
		this.booksIsbn = booksIsbn;
	}
	public void setOrderItemsOtid(String orderItemsOtid) {
		this.orderItemsOtid = orderItemsOtid;
	}
}
