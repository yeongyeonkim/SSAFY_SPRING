package com.ssafy.board;

import java.util.List;

//client(BoardApp.java)를 위한 인터페이스
public interface BoardService {
	public List<Board> selectAll();
	public Board selectOne(String num);
	public void insert(Board c);
	public void delete(String num);
	public void update(Board b);
	public List<Board> findByTitle(String title);
	public List<Board> findByName(String name);
	
	public List<Board> findByTitle2(String title);
	public void delete2(String[] nums);
}
