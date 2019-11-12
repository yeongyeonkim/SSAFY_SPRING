package com.mybatis.vo;
//vo: getter/setter, default 생성자. private field.
//table안의 레코드 한 개의 정보를 다루기 위해 사용되는 객체
public class Customer {
	private String num, name, address;

	public Customer() {}

	public Customer(String num, String name, String address) {
		this.num = num;
		this.name = name;
		this.address = address;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
