package com.mybatis.dao;

import java.util.List;

import com.mybatis.vo.Customer;

//client(CustomerServiceImpl.java)를 위해 만듬
public interface CustomerDao {
	List<Customer> selectAll();
	Customer selectOne(String num);
	int insert(Customer c);
	int delete(String num);
	int update(Customer c);
	List<Customer> findByAddress(String address);
}
