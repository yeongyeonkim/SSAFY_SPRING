package com.service;

import com.vo.Member;

public interface MemberService {

	public Member selectOne(String id);
	public int insert(Member m);
	public int update(Member m);
	public int delete(String id);
	
	
}
