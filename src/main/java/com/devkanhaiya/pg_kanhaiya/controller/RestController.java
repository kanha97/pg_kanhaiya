package com.devkanhaiya.pg_kanhaiya.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;

import com.devkanhaiya.pg_kanhaiya.repository.UserRepository;

@org.springframework.web.bind.annotation.RestController
@RequestMapping("/api")
public class RestController {

	@Autowired
	UserRepository userRepository;


	@RequestMapping(value="/LOGIN")
	public ResponseEntity<Object>  getLoginPage(){

		return ResponseEntity.ok(userRepository.findAll());
	}
	
}
