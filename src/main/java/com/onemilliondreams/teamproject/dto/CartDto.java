package com.onemilliondreams.teamproject.dto;

public class CartDto {

	private int cid;
	private int camount;
	private int ctotal;
	private String usersUaid;
	
	
	public int getCid() {
		return cid;
	}
	public int getCamount() {
		return camount;
	}
	public int getCtotal() {
		return ctotal;
	}
	public String getUsersUaid() {
		return usersUaid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public void setCamount(int camount) {
		this.camount = camount;
	}
	public void setCtotal(int ctotal) {
		this.ctotal = ctotal;
	}
	public void setUsersUaid(String usersUaid) {
		this.usersUaid = usersUaid;
	}
}
