package com.di.animal;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AnimalApp {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("animalcollection.xml");
//		Animal tiger = context.getBean("tiger", Animal.class);
//		Animal lion = context.getBean("lion", Animal.class);
//		tiger.info();
//		lion.info();
//		Zoo t = context.getBean("seoul", SeoulZoo.class);
//		LondonZoo zoo = context.getBean("londonzoo", LondonZoo.class);
//		zoo.info();
		Zoo t = context.getBean("paris", ParisZoo.class);
		t.info();
	}

}
