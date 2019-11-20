package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.service.MemberService;
import com.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	
	@GetMapping("/loginView.mem")
	public String loginView() {
		return "login";
	}
	
	@GetMapping("/forgotpwView.mem")
	public String forgotpwView() {
		return "findPw";
	}
	
	@PostMapping("/login.mem")
	public String login(HttpSession session, String id, String pw) {
		Member m = service.selectOne(id);
		if(m != null && pw.equals(m.getPassword())) {
			session.setAttribute("s_id", id);
			return "redirect:/index.food";
		}
		else {
			return "login";
		}
	}
	@GetMapping("/updateForm.mem")
	public String updateForm(Model model, HttpSession session) {
		String id = (String) session.getAttribute("s_id");
		Member m = service.selectOne(id);
		model.addAttribute("mem", m);
		System.out.println("uf");
		return "memEdit";
	}
	
	@PostMapping("/update.mem")
	public String update(Model model, Member m) {
		service.update(m);
		return "redirect:/index.food";
	}
	
	
	@GetMapping("/detail.mem")
	public String detail(Model model, String id) {
		Member m = service.selectOne(id);
		model.addAttribute("mem",m);
		return "memInfo";
	}
	
	@PostMapping("/insert.mem")
	public String insert(String id, String password, String name , String address, String phone, String[] allergy) {
		String al = "";
		for(String a :allergy) {
			if(al.length()==0) {
				al += a;
			}
			else {
				al += ", "+ a;
			}
		}
		Member m = new Member(id, password, name , phone, address, al );
		
		int r = service.insert(m);
		return "redirect:/loginView.mem";
		
	}
	
	@GetMapping("/delete.mem")
	public String delete(HttpSession session, String id) {
		service.delete(id);
		session.invalidate();
		return "redirect:/index.food";
	}
	
	
	@GetMapping("/logout.mem")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/index.food";
	}

}
