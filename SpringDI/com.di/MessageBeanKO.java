package com.di;

public class MessageBeanKO implements MessageBean{
	private String num;
	private String name;
	private String city;
	private Truck truck;
	
	//생성자 주입 
	public MessageBeanKO(String city) {
		this.city = city;
	}

	//setter 주입	
	public void setTruck(Truck truck) {
		this.truck = truck;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public void sayHello() {
		System.out.println("num: " + num);
		System.out.println("name: " + name);
		System.out.println("city: " + city);
		truck.work();
	}	
}