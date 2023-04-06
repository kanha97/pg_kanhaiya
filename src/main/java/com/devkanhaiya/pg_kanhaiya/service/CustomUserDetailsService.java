package com.devkanhaiya.pg_kanhaiya.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.devkanhaiya.pg_kanhaiya.entity.User;
import com.devkanhaiya.pg_kanhaiya.model.CustomUserDetails;
import com.devkanhaiya.pg_kanhaiya.repository.UserRepository;
import org.springframework.security.core.userdetails.UserDetailsService;

@Service
public class CustomUserDetailsService implements UserDetailsService{
	

	@Autowired
	UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		Optional<User> user = userRepository.findOne(null);

		if(user == null) {
			
			throw new UsernameNotFoundException("No User Found !!");
		}
		
		return new CustomUserDetails();
	}
}


