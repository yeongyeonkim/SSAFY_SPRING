package com.ssafy.pms.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.pms.vo.Phone;
import com.ssafy.pms.vo.User;

@Repository
public class PhoneDaoImpl implements PhoneDao{	

	@Autowired
	SqlSession session;//SqlSessionTemplate이 실제로 주입이 됨.
	
	@Override
	public List<Phone> selectAll() {
		return session.selectList("phone.selectAll");
	}

	@Override
	public Phone selectOne(String num) {
		return session.selectOne("phone.selectOne", num);
	}

	@Override
	public int insert(Phone c) {
		return session.insert("phone.insert", c);
	}

	@Override
	public int delete(String num) {
		return session.delete("phone.delete", num);
	}

	@Override
	public int update(Phone c) {
		return session.update("phone.update", c);
	}

	@Override
	public User selectUser(String id) {
		return session.selectOne("user.selectUser", id);
	}

}
