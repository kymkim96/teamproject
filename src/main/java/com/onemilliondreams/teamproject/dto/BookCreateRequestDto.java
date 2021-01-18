package com.onemilliondreams.teamproject.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

public class BookCreateRequestDto {

	private String isbn;
	private String title;
	private String writer;
	private String translator;
	private int price;
	private String publisher;
	private MultipartFile imgUrl;
	private boolean bestSeller;
	private String video1;
	private int page;
	private double weight;
	private String size;
	private String information;
	private String category;
	@DateTimeFormat(pattern="yyyy-MM-dd") private Date publicationDate;
	
	
	public String getIsbn() {
		return isbn;
	}
	public String getTitle() {
		return title;
	}
	public String getWriter() {
		return writer;
	}
	public String getTranslator() {
		return translator;
	}
	public int getPrice() {
		return price;
	}
	public String getPublisher() {
		return publisher;
	}
	public MultipartFile getImgUrl() {
		return imgUrl;
	}
	public boolean isBestSeller() {
		return bestSeller;
	}
	public String getVideo1() {
		return video1;
	}
	public int getPage() {
		return page;
	}
	public double getWeight() {
		return weight;
	}
	public String getSize() {
		return size;
	}
	public String getInformation() {
		return information;
	}
	public String getCategory() {
		return category;
	}
	public Date getPublicationDate() {
		return publicationDate;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public void setTranslator(String translator) {
		this.translator = translator;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public void setImgUrl(MultipartFile imgUrl) {
		this.imgUrl = imgUrl;
	}
	public void setBestSeller(boolean bestSeller) {
		this.bestSeller = bestSeller;
	}
	public void setVideo1(String video1) {
		this.video1 = video1;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public void setPublicationDate(Date publicationDate) {
		this.publicationDate = publicationDate;
	}
	
}
