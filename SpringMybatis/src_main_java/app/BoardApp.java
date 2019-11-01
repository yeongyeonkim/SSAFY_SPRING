
package com.mybatis.app;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mybatis.service.BoardService;
import com.mybatis.vo.Board;

public class BoardApp {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("config/mybatis-db.xml");
		BoardService service = context.getBean("bod", BoardService.class);
		//Component 어노테이션으로 bod라고 명 했으니 그것을 getBean으로 가져옴
		
		List<Board> list = service.selectAll();
		for(Board b : list) {
			System.out.println(b.getNum() + "--" + b.getName() + "--" + b.getTitle());
		}
		
		String[] nums = {"18", "19"};
		service.delete2(nums);
		list = service.selectAll();
		for(Board b : list) {
			System.out.println(b.getNum() + "--" + b.getName() + "--" + b.getTitle());
		}
		
		service.insert(new Board("18", "guest", "Mel Gibson", "curdate()", "게시판 연습18", "게시판연습입니다.", 0));
		service.insert(new Board("19", "guest", "Mel Gibson", "curdate()", "게시판 연습19", "게시판연습입니다.", 0));
		list = service.selectAll();
		for(Board b : list) {
			System.out.println(b.getNum() + "--" + b.getName() + "--" + b.getTitle());
		}
		
		list = service.findByTitle2("1");
		for(Board b : list) {
			System.out.println(b.getNum() + "--" + b.getName() + "--" + b.getTitle());
		}
		
		Board tmp = service.selectOne("21");
		tmp.setTitle("제목바꿈"); 
		tmp.setContent("내용바꿈");
		service.update(tmp);
		list = service.selectAll();
		for(Board b : list) {
			System.out.println(b.getNum() + "--" + b.getName() + "--" + b.getTitle());
		}
	}

}
