package com.di.animal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

//@Autowired : 자동 주입(타입 기준 : xml문서를 읽어서 생성한 객체 중에 타입이 동일하면 자동으로 주입시켜 줌)
//@Component : container의 bean 객체로 인식해서 생성한 후에 자동 등록시켜줌
//<bean id="seoul" class="com.di.animal.SeoulZoo">~~~
@Component("seoul")
public class SeoulZoo implements Zoo {
	
	@Autowired
	Tiger tiger;
	
	@Autowired
	@Qualifier("tommy")
	Lion lion99;
	
	@Override
	public void info() {
		tiger.info();
		lion99.info();		
	}	
}