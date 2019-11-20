package com.dao;

import java.util.List;

import com.vo.Food;

public interface FoodDao {
	public List<Food> selectAll();
	public Food selectOne(int code);
	public List<Food> search(String key1,String key, String word);
}
