package com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//부트스트랩 클래스(시작 클래스)-@SpringBootApplication이 붙어 있음
/*@SpringBootApplication:
 * 1. @Configuration : 설정파일(xml대신으로 등장. bean 생성 기능)
 * 2. @ComponentScan : 현재 부트스트랩 클래스가 포함된 패키지를 기준으로 하위 패키지를 스캔해서 필요한 객체를 생성 하거나 주입시켜 줌
 * : @Component, @Service, @Repository, @Autowired....
 * (@ComponentScan(basePackages={"com.aa", "com.bb"})
 * 3. @EnableAutoConfiguration : boot가 작업하는데 필요한 추가 빈들을 자동으로 생성해서 활성화 시킴 
 */
@SpringBootApplication
public class Bootproject1Application {

	public static void main(String[] args) {
		SpringApplication.run(Bootproject1Application.class, args);
		
	}
}