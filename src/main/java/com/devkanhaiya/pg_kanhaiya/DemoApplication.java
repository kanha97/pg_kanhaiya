package com.devkanhaiya.pg_kanhaiya;

import com.devkanhaiya.pg_kanhaiya.entity.User;
import com.devkanhaiya.pg_kanhaiya.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.devkanhaiya.pg_kanhaiya")
@EnableAutoConfiguration
public class DemoApplication {

	@Autowired
	UserRepository userRepository;

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}
	
//
//	
//	@GetMapping(value="count-users")
//	public String getCountUsers(){
//		long numberUsers = userRepository.count();
//		return "user available is : "+numberUsers;
//	}
//
//	@GetMapping("add-user")
//	public String addUser(){
//		User user = new User();
//		user.setFirstName("Render");
//		user.setLastName("Spring Boot");
//		userRepository.save(user);
//		return "User added successfully";
//	}

}
