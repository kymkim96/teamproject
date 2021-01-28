package com.onemilliondreams.teamproject.dto;

public class WriterDto {
	
	/*
	WID	NUMBER(10,0)	No
	WNAME	VARCHAR2(10 BYTE)	No
	WCONTENT	CLOB	No
	 */
	
	private int wid;
	private String wname;
	private String wcontent;
	
	
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public String getWname() {
		return wname;
	}
	public void setWname(String wname) {
		this.wname = wname;
	}
	public String getWcontent() {
		return wcontent;
	}
	public void setWcontent(String wcontent) {
		this.wcontent = wcontent;
	}
	
	
}
