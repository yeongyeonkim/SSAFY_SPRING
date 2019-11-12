package com.ssafy.pms.dao;

import java.util.List;

import com.ssafy.pms.vo.Phone;
import com.ssafy.pms.vo.User;

public interface PhoneDao {
	List<Phone> selectAll();//num, model, vendor
	Phone selectOne(String num);//num, model, price, vendor
	int insert(Phone phone);
	int delete(String num);
	int update(Phone phone);
	User selectUser(String id);//login check
}