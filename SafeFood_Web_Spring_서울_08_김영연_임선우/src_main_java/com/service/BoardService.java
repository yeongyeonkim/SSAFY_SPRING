package com.service;

import java.util.List;

import com.vo.Board;

//client(BoardApp.java)를 위한 인터페이스
public interface BoardService {
	public List<Board> selectAll();
	public Board selectOne(String num);
	public void insert(Board c);
	public void delete(String num);
	public void update(Board b);
	public List<Board> findByTitle(String title);
	public List<Board> findByName(String name);
}
