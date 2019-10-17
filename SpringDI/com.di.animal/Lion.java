package com.di.animal;

public class Lion implements Animal{
	
	private String age, name;
	
	public Lion(String age) {
		this.age = age;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public void info() {
		System.out.println("------Lion-----------------");
		System.out.println("age     :  "+age);
		System.out.println("name    :  "+name);
		System.out.println("----------------------------");
		System.out.println();
	}
	
	
	
	
}
