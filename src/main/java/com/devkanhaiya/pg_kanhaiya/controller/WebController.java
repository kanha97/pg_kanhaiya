package com.devkanhaiya.pg_kanhaiya.controller;

import com.devkanhaiya.pg_kanhaiya.entity.User;
import com.devkanhaiya.pg_kanhaiya.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class WebController {

	@Autowired
	UserRepository userRepository;



	@GetMapping("/login")
	public String getLoginPage(){
		//long numberUsers = userRepository.count();
		return "login";
	}

}
