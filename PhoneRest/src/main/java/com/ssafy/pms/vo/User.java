package com.ssafy.pms.vo;

public class User {
	private String id, pw;

	public String getid() {
		return id;
	}

	public void setid(String id) {
		this.id = id;
	}

	public String getpw() {
		return pw;
	}

	public void setpw(String pw) {
		this.pw = pw;
	}

	public User() {}
	
	public User(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}
	
}
