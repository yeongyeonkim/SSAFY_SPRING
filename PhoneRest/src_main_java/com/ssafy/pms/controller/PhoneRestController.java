package com.ssafy.pms.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.pms.service.PhoneService;
import com.ssafy.pms.vo.Phone;
import com.ssafy.pms.vo.User;

@RestController
public class PhoneRestController {
	
	@Autowired
	PhoneService service;
	
//	@RequestMapping(value = "/Phone", method = RequestMethod.GET)
	@GetMapping("/phone")
	public List<Phone> selectAll(){
		return service.selectAll();
	}
	
//	@RequestMapping(value = "/Phone/{num}", method = RequestMethod.GET)
	@GetMapping("/phone/{num}")
	public Phone selectOne(@PathVariable String num) {
		return service.selectOne(num);
	}
	
	@RequestMapping(value = "/Phone", method = RequestMethod.POST)
	public Map insert(@RequestBody Phone b) {
		service.insert(b);
		Map map = new HashMap();
		map.put("result", "insert success!!!");
		return map;
	}
	
	@RequestMapping(value = "/Phone/{num}", method = RequestMethod.DELETE)
	public Map delete(@PathVariable String num) {
		service.delete(num);
		Map map = new HashMap();
		map.put("result", "delete success!!!");
		return map;
	}
	
	@RequestMapping(value = "/Phone", method = RequestMethod.PUT)
	public Map update(@RequestBody Phone b) {
		service.update(b);
		Map map = new HashMap();
		map.put("result", "update success!!!");
		return map;
	}
	
	@RequestMapping(value="/login/{id}",method=RequestMethod.GET)
	public User login(@PathVariable String id, HttpSession session) {
		User user = service.selectUser(id);
		if(user != null) {
			session.setAttribute("id", id);
		}
		return user;
	}
	
	@RequestMapping(value="/logout/{id}",method=RequestMethod.GET)
	public void logout(@PathVariable String id, HttpSession session) {
		session.setAttribute("id", null);
		session.invalidate();
	}
}
