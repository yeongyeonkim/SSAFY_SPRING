package com.di.db;

public class OracleDataService implements DataService{
	int id, pass;
	String url, driver;

	public OracleDataService(int id, int pass) {
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
		System.out.println("------Orcale----------------");
		System.out.println("id      :  "+id);
		System.out.println("pass    :  "+pass);
		System.out.println("url     :  "+url);
		System.out.println("driver  :  "+driver);
		System.out.println("----------------------------");
		System.out.println();
	}
}
