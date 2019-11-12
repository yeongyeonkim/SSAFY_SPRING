package com.mybatis.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.mybatis.vo.Board;

@Component("bdao")
public class BoardDaoImpl implements BoardDao {
	
	@Autowired
	SqlSession session;
	
	public List<Board> selectAll() {
		return session.selectList("board.selectAll");
	}

	public Board selectOne(String num) {
		return session.selectOne("board.selectOne", num);
	}

	public void insert(Board c) {
		session.insert("board.insert", c);
	}

	public void delete(String num) {
		session.delete("board.delete", num);
	}

	public void update(Board b) {
		session.update("board.update", b);
	}

	public List<Board> findByTitle(String title) {
		return session.selectList("board.findByTitle", title);
	}

	public List<Board> findByName(String name) {
		return session.selectList("board.findByName", name);
	}

	public List<Board> findByTitle2(String title) {
		return session.selectList("board.findByTitle2", "%"+title+"%");
	}

	public void delete2(String[] nums) {
		for(String num : nums)
			session.delete("board.delete", num);
	}
	
}
