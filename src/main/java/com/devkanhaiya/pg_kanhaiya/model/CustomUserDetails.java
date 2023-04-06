package com.devkanhaiya.pg_kanhaiya.model;

import java.util.Collection;
import java.util.HashSet;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.devkanhaiya.pg_kanhaiya.entity.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;


@NoArgsConstructor
public class CustomUserDetails implements UserDetails{
	
	private static final long serialVersionUID = 1L;
	
	public User user;

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		
		HashSet<SimpleGrantedAuthority> set = new HashSet<>();
		return set;
	}



	@Override
	public boolean isAccountNonExpired() {
		
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		
		return true;
	}

	@Override
	public boolean isEnabled() {
		
		return true;
	}



	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return null;
	}

}
