package com.devkanhaiya.pg_kanhaiya.controller;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.devkanhaiya.pg_kanhaiya.UserService;
import com.devkanhaiya.pg_kanhaiya.entity.User;
import com.devkanhaiya.pg_kanhaiya.model.UserRequest;
import com.devkanhaiya.pg_kanhaiya.repository.UserRepository;

import io.swagger.models.auth.In;

@org.springframework.web.bind.annotation.RestController
@RequestMapping("/custom-api")
public class RestController {

	@Autowired
	UserRepository userRepository;

	@Autowired
	UserService service;

	@RequestMapping(value="/users")
	public ResponseEntity<Object>  getLoginPage(){

		return ResponseEntity.ok(userRepository.findAll());
	}
	
	@PostMapping(value="/check-login")
	public ResponseEntity<Object>  checkLogin(@RequestBody UserRequest requestBody){
		List<User> list=  service.findByMobileNumberAndPassword(requestBody.getUserName(),requestBody.getPassword());

		String token="0";
		if(!list.isEmpty()) {
			User user = list.get(0);
			int leftLimit = 97; // letter 'a'
		    int rightLimit = 122; // letter 'z'
		    int targetStringLength = 10;
		    Random random = new Random();

		    String generatedString = random.ints(leftLimit, rightLimit + 1)
		      .limit(targetStringLength)
		      .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
		      .toString();
			token = generatedString;
			user.setToken(token);
			userRepository.save(user);
		}
		return ResponseEntity.ok(token);
	}
	
}
