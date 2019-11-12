package com.ssafy.pms.dao;

import java.util.List;

import com.ssafy.pms.vo.Food;

public interface FoodDAO {
	public List<Food> selectAll();
	public Food selectOne(int code);
	public List<Food> search(String key1,String key, String word);
}
