package com.di.db;

public class MySQLDataService implements DataService{
	int id, pass;
	String url, driver;

	public MySQLDataService(int id, int pass) {
		this.id = id;
		this.pass = pass;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	@Override
	public void info() {
		System.out.println("------MYSQL-----------------");
		System.out.println("id      :  "+id);
		System.out.println("pass    :  "+pass);
		System.out.println("url     :  "+url);
		System.out.println("driver  :  "+driver);
		System.out.println("----------------------------");
		System.out.println();
	}
	
	
	
	
}
