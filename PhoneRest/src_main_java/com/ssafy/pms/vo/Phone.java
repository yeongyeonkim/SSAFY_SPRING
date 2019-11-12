package com.ssafy.pms.vo;

//vo: getter/setter, default 생성자. private field.
//table안의 레코드 한 개의 정보를 다루기 위해 사용되는 객체
public class Phone {
	private String num, model, vcode;
	private int price;

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getVcode() {
		return vcode;
	}

	public void setVcode(String vcode) {
		this.vcode = vcode;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Phone() {
	}

	public Phone(String num, String model, String vcode, int price) {
		this.num = num;
		this.model = model;
		this.vcode = vcode;
		this.price = price;
	}

}
