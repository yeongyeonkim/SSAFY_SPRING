package com.mybatis.app;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mybatis.service.CustomerService;
import com.mybatis.vo.Customer;

public class CustomerApp {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("config/mybatis-db.xml");
		CustomerService service = context.getBean("cus", CustomerService.class);
		
		Customer cc = new Customer("10", "rolly", "seoul");
		try {
			service.insert2(cc);
		} catch(Exception e) {}
		
		List<Customer> list = service.selectAll();
		for(Customer c : list) {
			System.out.println(c.getName() + "--" + c.getNum() + "--" + c.getAddress());
		}
		
		System.out.println("-----------------------------");
		Customer c = service.selectOne("111");
		System.out.println(c.getName() + "--" + c.getNum() + "--" + c.getAddress());
		
	}

}
