package com.di.db;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class DataBaseApp {

	public static void main(String[] args) {
		//1.ClassPathXmlApplicationContext 객체 생성
		ApplicationContext context = new ClassPathXmlApplicationContext("db.xml");
		//2.getBean("oracle"), getBean("mysql")
		DataService oracle = context.getBean("oracle", DataService.class);
		DataService mysql = context.getBean("mysql", DataService.class);
		//3.info() 호출
		oracle.info();
		mysql.info();		
		
	}

}
