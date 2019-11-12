package com.mybatis.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mybatis.vo.Customer;

//dao 객체 : CRUD
//sqlSession객체를 주입 받아 curd 작업 수행
//@Component("dao")
@Repository("dao")
public class CustomerDaoImpl implements CustomerDao{

	@Autowired
	SqlSession session;//SqlSessionTemplate이 실제로 주입이 됨.
	
	@Override
	public List<Customer> selectAll() {
		return session.selectList("customer.selectAll");
	}

	@Override
	public Customer selectOne(String num) {
		return session.selectOne("customer.selectOne", num);
	}

	@Override
	public int insert(Customer c) {
		return session.insert("customer.insert", c);
	}

	@Override
	public int delete(String num) {
		return session.delete("customer.delete", num);
	}

	@Override
	public int update(Customer c) {
		return session.update("customer.update", c);
	}


	@Override
	public List<Customer> findByAddress(String address) {
		return session.selectList("customer.findByAddress", address);
	}

}
