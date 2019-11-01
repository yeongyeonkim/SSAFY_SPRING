package com.mybatis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.mybatis.dao.BoardDao;
import com.mybatis.vo.Board;

@Component("bod")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDao dao;
	@Override
	public List<Board> selectAll() {
		return dao.selectAll();
	}

	@Override
	public Board selectOne(String num) {
		return dao.selectOne(num);
	}

	@Override
	public void insert(Board c) {
		dao.insert(c);
	}

	@Override
	public void delete(String num) {
		dao.delete(num);
	}

	@Override
	public void update(Board b) {
		dao.update(b);
	}

	@Override
	public List<Board> findByTitle(String title) {
		return dao.findByTitle(title);
	}

	@Override
	public List<Board> findByName(String name) {
		return dao.findByName(name);
	}

	@Override
	public List<Board> findByTitle2(String title) {
		return dao.findByTitle2(title);
	}

	@Override
	public void delete2(String[] nums) {
		dao.delete2(nums);
	}
	
}
