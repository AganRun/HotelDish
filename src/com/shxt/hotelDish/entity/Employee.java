package com.shxt.hotelDish.entity;

/**
 * 员工实体
 * @author admin
 *
 */
public class Employee {

	private int id;
	
	private String name;
	
	private String sex;
	
	private String tel;
	
	private String id_card;
	
	private String post;
	
	private String nation;
	
	private String password;
	

	public Employee(int id, String password) {
		super();
		this.id = id;
		this.password = password;
	}

	public Employee() {
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

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getId_card() {
		return id_card;
	}

	public void setId_card(String id_card) {
		this.id_card = id_card;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	
}
