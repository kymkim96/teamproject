package com.onemilliondreams.teamproject.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ReviewDto {

	//oracle
	/*
	CREATE TABLE reviews (
    rid         NUMBER(7) NOT NULL,
    rstar       NUMBER(1) NOT NULL,
    rdate       DATE NOT NULL,
    rcontent    CLOB,
    users_uid   VARCHAR2(100),
    books_isbn  VARCHAR2(50)
	);
	 */
	
	//field
	private int rid;
	private int rstar;
	private Date rdate;
	private String rcontent;
	private String usersUid;
	private String booksIsbn;
	
	
	
	//getter, setter

	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public int getRstar() {
		return rstar;
	}
	public void setRstar(int rstar) {
		this.rstar = rstar;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public String getUsersUid() {
		return usersUid;
	}
	public void setUsersUid(String usersUid) {
		this.usersUid = usersUid;
	}
	public String getBooksIsbn() {
		return booksIsbn;
	}
	public void setBooksIsbn(String booksIsbn) {
		this.booksIsbn = booksIsbn;
	}
		
}
