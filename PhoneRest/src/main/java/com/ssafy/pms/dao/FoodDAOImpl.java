package com.ssafy.pms.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.pms.vo.Food;

@Repository
public class FoodDAOImpl implements FoodDAO {
	
	@Autowired
	SqlSession session;
	
	public List<Food> selectAll(){
		return session.selectList("food.selectAll");
	}
	
	public Food selectOne(int code) {
		return session.selectOne("food.selectOne", code);
	}
	
	public List<Food> search(String key1, String key, String word){
		List<Food> list = null;
		if (!key.equals("all") && word != null && !word.trim().equals("")) {
			word = "%" + word + "%";
			if (key.equals("name")) {
				list = session.selectList("food.selectName", word);
			} else if (key.equals("maker")) {
				list = session.selectList("food.selectMaker", word);
			} else if (key.equals("material")) {
				list = session.selectList("food.selectMaterial", word);
			} 
		} else
			list = session.selectList("food.selectAll");
		
		return list;
	}
}
