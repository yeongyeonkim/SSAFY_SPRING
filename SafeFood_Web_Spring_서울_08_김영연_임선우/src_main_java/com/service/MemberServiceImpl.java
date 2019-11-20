package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.MemberDao;
import com.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;
	
	
	@Override
	public Member selectOne(String id) {
		return dao.selectOne(id);
	}

	@Override
	public int insert(Member m) {
		dao.insert(m);
		return 0;
	}

	@Override
	public int update(Member m) {
		dao.update(m);
		return 0;
	}

	@Override
	public int delete(String id) {
		dao.delete(id);
		return 0;
	}

}
