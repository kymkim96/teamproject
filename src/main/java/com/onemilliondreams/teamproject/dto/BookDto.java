package com.onemilliondreams.teamproject.dto;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

public class BookDto {

	private String isbn;
	private String btitle;
	private String bsubTitle;
	private String bpublisher;
	private String btranslator;
	@DateTimeFormat(pattern="yyyy-MM-dd") private Date bpublishDate;
	private boolean bbestSeller;
	private int bprice;
	private int bdiscount;
	private int bdeliveryFee;
	private String bcontent;
	private String bindex;
	private String bimgLink;
	private MultipartFile bimg;
	private String bimgFilename;
	private String bcontentType;
	private String bstate;
	private String bvideoLink;
	private String categoriesCategoryName;
	private List<WriterDto> bookWriterlist;
	private String[] bwriters;
	
	private int bfprice;//book final price;
	
	
	public String getIsbn() {
		return isbn;
	}
	public String getBtitle() {
		return btitle;
	}
	public String getBsubTitle() {
		return bsubTitle;
	}
	public String getBpublisher() {
		return bpublisher;
	}
	public String getBtranslator() {
		return btranslator;
	}
	public Date getBpublishDate() {
		return bpublishDate;
	}
	public boolean isBbestSeller() {
		return bbestSeller;
	}
	public int getBprice() {
		return bprice;
	}
	public int getBdiscount() {
		return bdiscount;
	}
	public int getBdeliveryFee() {
		return bdeliveryFee;
	}
	public String getBcontent() {
		return bcontent;
	}
	public String getBindex() {
		return bindex;
	}
	public String getBimgLink() {
		return bimgLink;
	}
	public MultipartFile getBimg() {
		return bimg;
	}
	public String getBimgFilename() {
		return bimgFilename;
	}
	public String getBcontentType() {
		return bcontentType;
	}
	public String getBstate() {
		return bstate;
	}
	public String getBvideoLink() {
		return bvideoLink;
	}
	public String getCategoriesCategoryName() {
		return categoriesCategoryName;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public void setBsubTitle(String bsubTitle) {
		this.bsubTitle = bsubTitle;
	}
	public void setBpublisher(String bpublisher) {
		this.bpublisher = bpublisher;
	}
	public void setBtranslator(String btranslator) {
		this.btranslator = btranslator;
	}
	public void setBpublishDate(Date bpublishDate) {
		this.bpublishDate = bpublishDate;
	}
	public void setBbestSeller(boolean bbestSeller) {
		this.bbestSeller = bbestSeller;
	}
	public void setBprice(int bprice) {
		this.bprice = bprice;
	}
	public void setBdiscount(int bdiscount) {
		this.bdiscount = bdiscount;
	}
	public void setBdeliveryFee(int bdeliveryFee) {
		this.bdeliveryFee = bdeliveryFee;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public void setBindex(String bindex) {
		this.bindex = bindex;
	}
	public void setBimgLink(String bimgLink) {
		this.bimgLink = bimgLink;
	}
	public void setBimg(MultipartFile bimg) {
		this.bimg = bimg;
	}
	public void setBimgFilename(String bimgFilename) {
		this.bimgFilename = bimgFilename;
	}
	public void setBcontentType(String bcontentType) {
		this.bcontentType = bcontentType;
	}
	public void setBstate(String bstate) {
		this.bstate = bstate;
	}
	public void setBvideoLink(String bvideoLink) {
		this.bvideoLink = bvideoLink;
	}
	public void setCategoriesCategoryName(String categoriesCategoryName) {
		this.categoriesCategoryName = categoriesCategoryName;
	}
	public int getBfprice() {
		return bfprice;
	}
	public void setBfprice(int bfprice) {
		this.bfprice = bfprice;
	}
	public String[] getBwriters() {
		return bwriters;
	}
	public void setBwriters(String[] bwriters) {
		this.bwriters = bwriters;
	}
	public List<WriterDto> getBookWriterlist() {
		return bookWriterlist;
	}
	public void setBookWriterlist(List<WriterDto> bookWriterlist) {
		this.bookWriterlist = bookWriterlist;
	}
	
}
