package com;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class SwaggerConfig {
	
	@Bean
	public Docket api() {		
		return new Docket(DocumentationType.SWAGGER_2)
				.groupName("Board Management")	// select a spec
				.apiInfo(info())
				.select()//
				.apis(RequestHandlerSelectors.basePackage("com.rest.controller"))
				.build();

	}

	private ApiInfo info() {
		return new ApiInfoBuilder().title("Board Management API")
				.description("<h1>Board Management program</h1>")
				.license("ssafy")
				.version("3.0")
				.build();
	}
}
