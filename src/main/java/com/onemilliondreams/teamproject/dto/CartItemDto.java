package com.onemilliondreams.teamproject.dto;

public class CartItemDto {

	private int cid;
	private int cprice;
	private int ccount;
	private int cdiscount;
	private String usersUaid;
	private String booksIsbn;
	private String orderItemsOtid;
	
	
	public int getCid() {
		return cid;
	}
	public int getCprice() {
		return cprice;
	}
	public int getCcount() {
		return ccount;
	}
	public int getCdiscount() {
		return cdiscount;
	}
	public String getUsersUaid() {
		return usersUaid;
	}
	public String getBooksIsbn() {
		return booksIsbn;
	}
	public String getOrderItemsOtid() {
		return orderItemsOtid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public void setCprice(int cprice) {
		this.cprice = cprice;
	}
	public void setCcount(int ccount) {
		this.ccount = ccount;
	}
	public void setCdiscount(int cdiscount) {
		this.cdiscount = cdiscount;
	}
	public void setUsersUaid(String usersUaid) {
		this.usersUaid = usersUaid;
	}
	public void setBooksIsbn(String booksIsbn) {
		this.booksIsbn = booksIsbn;
	}
	public void setOrderItemsOtid(String orderItemsOtid) {
		this.orderItemsOtid = orderItemsOtid;
	}
}
