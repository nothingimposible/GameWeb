package com.user;

public class User {
	 private int id;	
	 public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String name;
	 private String phone;
	 private String password;
	 private String sex;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	@Override
	public String toString() {
		return "Customer [name=" + name+ ",id="+id + ", phone=" + phone + ", password=" + password + ", sex=" + sex + "]";
	}

}
