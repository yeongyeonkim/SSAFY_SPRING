package com.di.animal;

public class Tiger implements Animal{
	
	private String age, name;
	
	public Tiger(String age) {
		this.age = age;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public void info() {
		System.out.println("------TIGER-----------------");
		System.out.println("age     :  "+age);
		System.out.println("name    :  "+name);
		System.out.println("----------------------------");
		System.out.println();
	}
	
	
	
	
}
