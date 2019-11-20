package com.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	SqlSession session;
	
	@Override
	public Member selectOne(String id) {
		
		return session.selectOne("member.selectOne", id);
	}

	@Override
	public int insert(Member m) {
		
		return session.insert("member.insert", m);
	}

	@Override
	public int update(Member m) {
		
		return session.update("member.update", m);
	}

	@Override
	public int delete(String id) {
		
		return session.delete("member.delete", id);
	}

}
