package com.ssafy.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BoardController {
	
	@Autowired
	BoardService service;
	
	@GetMapping(value = "/list.bod")
	public String list(Model model) {
		List<Board> list = service.selectAll();
		model.addAttribute("list", list);
		return "list";
	}
	
	@GetMapping(value = "/read.bod")
	public String read(Model model, String num) {
		Board b = service.selectOne(num);
		model.addAttribute("b", b);
		return "read";
	}
	
	@GetMapping(value = "/insert.bod")
	public String insert() {
		return "insert";
	}
	
	@PostMapping(value = "/insert.bod")
	public String insert2(Model model, Board b) {
		service.insert(b);
		model.addAttribute("b", b);
		return "redirect:/list.bod";
	}
	@GetMapping(value = "/delete.bod")
	public String delete(String num) {
		service.delete(num);
		return "redirect:/list.bod";
	}
	@PostMapping(value = "search.bod")
	public String search(Model model, String search, String searchtext) {
		List<Board> list = null;
		if(searchtext.equals("")) {
			list = service.selectAll();
		}
		else if(search.equals("name")) {
			list = service.findByName("%"+searchtext+"%");
		} else if(search.equals("title")) {
			list = service.findByTitle2("%"+searchtext+"%");
		}
		model.addAttribute("list", list);
		return "list";
	}
	
	@GetMapping(value = "/login.bod")
	public String login() {
		return "login";
	}
	@PostMapping(value ="/login.bod")
	public String loginProcess(String id, HttpSession session) {
		session.setAttribute("id", id);
		return "redirect:/list.bod";
	}
	
	@GetMapping(value = "/logout.bod")
	public String logout(HttpSession session) {
		session.setAttribute("id", null);
		return "redirect:/list.bod";
	}
}
