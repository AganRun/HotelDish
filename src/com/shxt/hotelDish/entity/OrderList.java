package com.shxt.hotelDish.entity;

/**
 * 订单实体类
 * @author admin
 *
 */
public class OrderList {

	private int id;
	
	private int dish_id;
	
	private String name;
	
	private int table_no;
	
	private int priceNum;
	
	private String type;
	
	private int num;
	
	private int leftNum;
	
	private String condition;
	
	public OrderList() {
		super();
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getDish_id() {
		return dish_id;
	}

	public void setDish_id(int dish_id) {
		this.dish_id = dish_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getTable_no() {
		return table_no;
	}

	public void setTable_no(int table_no) {
		this.table_no = table_no;
	}

	public int getPriceNum() {
		return priceNum;
	}

	public void setPriceNum(int priceNum) {
		this.priceNum = priceNum;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getLeftNum() {
		return leftNum;
	}

	public void setLeftNum(int leftNum) {
		this.leftNum = leftNum;
	}
	
	
	
	
}
