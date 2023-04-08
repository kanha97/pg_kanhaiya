package com.devkanhaiya.pg_kanhaiya.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import com.devkanhaiya.pg_kanhaiya.service.CustomUserDetailsService;



@Configuration
@EnableWebSecurity
public class MySecurityBasicConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	CustomUserDetailsService customUserDetailsService;


	 @Override
     protected void configure(HttpSecurity http) throws Exception {
         
         http
             .authorizeRequests()
             .antMatchers("/KRCS/add").permitAll()
             .antMatchers("/resources/**","static/**").permitAll()
             .anyRequest().authenticated()
             .and()
             .formLogin().loginPage("/KRC/login").loginProcessingUrl("/authenticateUser")
             .permitAll();
     }
	
	 
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.userDetailsService(customUserDetailsService).passwordEncoder(bCryptPasswordEncoder());
	}
	
	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		
		return new BCryptPasswordEncoder(10);
	}
	

	   @Override
	   public void configure(WebSecurity web) throws Exception {
	       web.ignoring().antMatchers("/resources/**");
	   }
}


