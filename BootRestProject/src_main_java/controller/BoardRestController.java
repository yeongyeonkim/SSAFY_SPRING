package com.rest.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.mybatis.service.BoardService;
import com.mybatis.vo.Board;

@RestController
public class BoardRestController {
	
	@Autowired
	BoardService service;
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public List<Board> selectAll(){
		return service.selectAll();
	}
	
	@RequestMapping(value = "/board/{num}", method = RequestMethod.GET)
	public Board selectOne(@PathVariable String num) {
		return service.selectOne(num);
	}
	
	@RequestMapping(value = "/board", method = RequestMethod.POST)
	public Map insert(@RequestBody Board b) {
		service.insert(b);
		Map map = new HashMap();
		map.put("result", "insert success!!!");
		return map;
	}
	
	@RequestMapping(value = "/board/{num}", method = RequestMethod.DELETE)
	public Map delete(@PathVariable String num) {
		service.delete(num);
		Map map = new HashMap();
		map.put("result", "delete success!!!");
		return map;
	}
	
	@RequestMapping(value = "/board", method = RequestMethod.PUT)
	public Map update(@RequestBody Board b) {
		service.update(b);
		Map map = new HashMap();
		map.put("result", "update success!!!");
		return map;
	}
	
	@RequestMapping(value = "/board/name/{name}", method = RequestMethod.GET)
	public List<Board> searchName(@PathVariable String name){
		return service.findByName(name);
	}
	
	@RequestMapping(value = "/board/title/{title}", method = RequestMethod.GET)
	public List<Board> searchTitle(@PathVariable String title){
		return service.findByTitle2(title);
	}
}
