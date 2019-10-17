package com.sample3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

//container : application에서 필요한 객체를 공급해 주는 객체(객체를 생성, 공급,소멸까지 관리)
//ApplicationContext (스프링이 제공해주는 컨테이너 클래스)
//ClassPathXmlApplicationContext 는 ApplicationContext의 자식 클래스 중의 하나
public class HelloApp {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("context.xml");
		MessageBean bean = context.getBean("bean1", MessageBean.class);
		MessageBean bean2 = context.getBean("bean1", MessageBean.class);//필요한 객체 요청
//		MessageBean bean = (MessageBean)context.getBean("bean2");//필요한 객체 요청
		
		System.out.println(bean == bean2);
		bean.sayHello();
	}
}
