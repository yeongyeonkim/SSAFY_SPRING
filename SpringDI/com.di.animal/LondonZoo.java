package com.di.animal;


public class LondonZoo implements Animal{
	
	Tiger tiger;
	Lion lion;
	
	
	public void setTiger(Tiger tiger) {
		this.tiger = tiger;
	}

	public void setLion(Lion lion) {
		this.lion = lion;
	}

	@Override
	public void info() {
		tiger.info();
		lion.info();
	}
}
