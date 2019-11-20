package com.vo;

public class Member {
	private String id        ;
	private String password  ;
	private String name      ;
	private String phone     ;
	private String address   ;
	private String allergy   ;
	
	public Member() {}
	public Member(String id, String name, String phone, String allergy) {
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.allergy = allergy;
	}
	public Member(String id, String password, String name, String phone, String address, String allergy) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.allergy = allergy;
		this.phone = phone;
		this.address = address;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAllergy() {
		return allergy;
	}
	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", password=" + password + ", name=" + name + ", phone=" + phone + ", address="
				+ address + ", allergy=" + allergy + "]";
	}
	
}
