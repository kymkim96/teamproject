package com.onemilliondreams.teamproject.dto;

public class OrderItemDto {
	/*
	OTID	VARCHAR2(10 BYTE)	No
	OTPRICE	NUMBER(7,0)	No
	OTCOUNT	NUMBER(3,0)	No
	ORDERS_OID	NUMBER(10,0)	Yes
	OTDISCOUNT	NUMBER(3,0)	Yes
	BOOKS_ISBN	VARCHAR2(50 BYTE)	Yes
	 */
	
	
	private String otid;
	private int otprice;
	private int otcount;
	private int ordersOid;
	private int otdiscount;
	private String booksIsbn;
	
	
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
	
	
}
