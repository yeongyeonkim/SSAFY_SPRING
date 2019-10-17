package com.di;

public class MessageBeanEN implements MessageBean{
	private String num;
	private String name;
	private String address;//setter 주입
	private Truck truck;
	
	//생성자 주입
	public MessageBeanEN(String num, String name) {
		this.num = num;
		this.name = name;
	}

	//setter 주입
	public void setAddress(String address) {
		this.address = address;
	}
	
	public void setTruck(Truck truck) {
		this.truck = truck;
	}
	
	@Override
	public void sayHello() {
		System.out.println("num: " + num);
		System.out.println("name: " + name);
		System.out.println("address: " + address);
		truck.work();
	}
	//num name은 생성자 주입 address는 setter 주입
}
