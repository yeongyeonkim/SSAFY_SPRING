package com.ssafy.pms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ssafy.pms.service.FoodService;
import com.ssafy.pms.vo.Food;

@Controller
public class FoodController {
	
	@Autowired
	FoodService service;
	
//	@ExceptionHandler
//	public ModelAndView errorHandle(Exception e) {
//		ModelAndView mv = new ModelAndView("error");//생성할 때 뷰이름 지정
//		mv.addObject("errMSG", "메세지:"+e.getMessage()); //데이터 저장
//		return mv;
//	}
	
	@GetMapping(value = "/list.food")
	public String list(Model model) {
		List<Food> list = service.selectAll();
		model.addAttribute("list", list);
		return "itemList";
	}
	@GetMapping(value = "/detail.food")
	public String detail(Model model, int code) {
		Food f = service.selectOne(code);
		model.addAttribute("food", f);
		String al = allergy(f.getMaterial());
		model.addAttribute("al", al);
		return "itemInfo";		
	}
	
	public String allergy(String al) {
		String[] allergys = { "대두", "땅콩", "우유", "게", "새우", "참치", "연어", "쑥", "소고기", "닭고기", "돼지고기", "복숭아", "민들레",
		"계란흰자" };
		String r = "";
		for (int i = 0; i < allergys.length; i++) {
			if (al.contains(allergys[i])) {
				if (r == "" || r == null)
					r += allergys[i];
				else
					r += ", " + allergys[i];
			}
		}
		return r;
	}
}
