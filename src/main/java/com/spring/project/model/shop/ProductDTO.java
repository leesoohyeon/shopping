package com.spring.project.model.shop;

import org.springframework.web.multipart.MultipartFile;

public class ProductDTO {
	private int product_code;
	private String product_name;
	private int price;
	private String filename;
	private String description;
	private MultipartFile file1;
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public MultipartFile getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
	}
	
	@Override
	public String toString() {
		return "ProductDTO [product_code=" + product_code + ", product_name=" + product_name + ", price=" + price
				+ ", filename=" + filename + ", description=" + description + ", file1=" + file1 + "]";
	}
	
	
}
