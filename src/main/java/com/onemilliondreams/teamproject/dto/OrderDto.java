package com.onemilliondreams.teamproject.dto;

import java.util.Date;

public class OrderDto {
	private int oid;
	private int oamount;
	private String oaddress;
	private Date odate;
	private int ototal;
	private String usersUaid;
	
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getOamount() {
		return oamount;
	}
	public void setOamount(int oamount) {
		this.oamount = oamount;
	}
	public String getOaddress() {
		return oaddress;
	}
	public void setOaddress(String oaddress) {
		this.oaddress = oaddress;
	}
	public Date getOdate() {
		return odate;
	}
	public void setOdate(Date odate) {
		this.odate = odate;
	}
	public int getOtotal() {
		return ototal;
	}
	public void setOtotal(int ototal) {
		this.ototal = ototal;
	}
	public String getUsersUaid() {
		return usersUaid;
	}
	public void setUsersUaid(String usersUaid) {
		this.usersUaid = usersUaid;
	}
	
	
	
	
	
}
