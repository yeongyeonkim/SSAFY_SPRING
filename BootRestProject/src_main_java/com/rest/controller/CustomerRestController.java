package com.rest.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.mybatis.service.CustomerService;
import com.mybatis.vo.Customer;

import io.swagger.annotations.ApiOperation;

//@RestController : @Controller + @ResponseBody(java object -> json으로 변환)
@RestController
public class CustomerRestController {
	
	@Autowired
	CustomerService service;
	
//	@GetMapping("/customers")
	@RequestMapping(value = "/customers", method= RequestMethod.GET)
	@ApiOperation("고객 정보를 리턴하는 메소드")
	public List<Customer> selectAll(){
		return service.selectAll();
	}
	
	//http://localhost:8080/rest/customers/111
	@RequestMapping(value="/customers/{num}", method=RequestMethod.GET)
	@ApiOperation("num에 해당하는 고객을 리턴하는 메소드")
	public Customer selectOne(@PathVariable String num) {
		return service.selectOne(num);
	}
	
	@RequestMapping(value="/customers/{num}", method=RequestMethod.DELETE)
	@ApiOperation("num에 해당하는 고객을 삭제하는 메소드")
	public Map delete(@PathVariable String num) {
		service.delete(num);
		Map map = new HashMap();
		map.put("result", "delete success!!!");
		return map;
	}
	
	@RequestMapping(value="/customers", method=RequestMethod.POST)
	@ApiOperation("새 고객을 추가하는 메소드")
	public Map insert(@RequestBody Customer c) {//REQUEST안의 json->java object로 변환
		service.insert(c);
		Map map = new HashMap();
		map.put("result", "insert success!!");
		return map;
	}
	
	@RequestMapping(value="/customers", method=RequestMethod.PUT)
	public Map update(@RequestBody Customer c) {
		service.update(c);
		Map map = new HashMap();
		map.put("result", "update success!!");
		return map;
	}
	
}
