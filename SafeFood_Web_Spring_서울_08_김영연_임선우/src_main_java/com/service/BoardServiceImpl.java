package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BoardDao;
import com.vo.Board;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDao dao;

	public List<Board> selectAll() {
		return dao.selectAll();
	}

	public Board selectOne(String num) {
		return dao.selectOne(num);
	}

	public void insert(Board c) {
		dao.insert(c);
	}

	public void delete(String num) {
		dao.delete(num);
	}

	public void update(Board b) {
		dao.update(b);
	}

	public List<Board> findByTitle(String title) {
		return dao.findByTitle(title);
	}

	public List<Board> findByName(String name) {
		return dao.findByName(name);
	}
	
}
