package com.shxt.hotelDish.entity;

public class Dishes {

	private int id;
	
	private String name;
	
	private int price;
	
	private String type;
	
	private int leftNum;
	
	private int table_no;
	
	private String img;

	
	
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Dishes() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getLeftNum() {
		return leftNum;
	}

	public void setLeftNum(int leftNum) {
		this.leftNum = leftNum;
	}

	public int getTable_no() {
		return table_no;
	}

	public void setTable_no(int table_no) {
		this.table_no = table_no;
	}
	
	
	
}
