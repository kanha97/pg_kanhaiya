package com.devkanhaiya.pg_kanhaiya.security;

import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

public class WebMvcConfig implements WebMvcConfigurer{
	 
	 @Override
	    public void addResourceHandlers(ResourceHandlerRegistry registry) {

	        registry.addResourceHandler("/resources/**").addResourceLocations("/static/");
	    }
}
