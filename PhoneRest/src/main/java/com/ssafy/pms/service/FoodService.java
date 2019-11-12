package com.ssafy.pms.service;

import java.util.List;

import com.ssafy.pms.vo.Food;

public interface FoodService {
	public List<Food> selectAll();
	public Food selectOne(int code);
	public List<Food> search(String key1,String key, String word);
}
