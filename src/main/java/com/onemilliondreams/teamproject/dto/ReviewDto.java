package com.onemilliondreams.teamproject.dto;

import java.util.Date;

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
	private int rstars;
	private Date rdate;
	private String rcontent;
	private String usersId;
	private String booksIsbn;
	
	
	//getter, setter
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public int getRstars() {
		return rstars;
	}
	public void setRstars(int rstars) {
		this.rstars = rstars;
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
	public String getUsersId() {
		return usersId;
	}
	public void setUsersId(String usersId) {
		this.usersId = usersId;
	}
	public String getBooksIsbn() {
		return booksIsbn;
	}
	public void setBooksIsbn(String booksIsbn) {
		this.booksIsbn = booksIsbn;
	}
	
		
}
