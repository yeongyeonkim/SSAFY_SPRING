package com.dao;

import com.vo.Member;

public interface MemberDao {
	
	public Member selectOne(String id);
	public int insert(Member m);
	public int update(Member m);
	public int delete(String id);

}
