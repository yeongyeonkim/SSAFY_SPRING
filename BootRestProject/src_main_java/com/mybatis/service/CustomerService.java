package com.mybatis.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.mybatis.vo.Customer;

//client(CustomerApp.java)를 위해 만듬
public interface CustomerService {
	List<Customer> selectAll();
	Customer selectOne(String num);
	int insert(Customer c);
	@Transactional
	int insert2(Customer c) throws Exception;
	
	int delete(String num);
	int update(Customer c);
	List<Customer> findByAddress(String address);
}
