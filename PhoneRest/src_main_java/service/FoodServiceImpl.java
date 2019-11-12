package com.ssafy.pms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.pms.dao.FoodDAO;
import com.ssafy.pms.vo.Food;

@Service
public class FoodServiceImpl implements FoodService {

	@Autowired
	FoodDAO dao;
	
	@Override
	public List<Food> selectAll() {
		return dao.selectAll();
	}

	@Override
	public Food selectOne(int code) {
		return dao.selectOne(code);
	}

	@Override
	public List<Food> search(String key1, String key, String word) {
		return dao.search(key1, key, word);
	}
}
