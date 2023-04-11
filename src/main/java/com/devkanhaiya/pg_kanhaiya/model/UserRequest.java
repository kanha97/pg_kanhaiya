package com.devkanhaiya.pg_kanhaiya.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.*;

@Getter
@Setter
@JsonInclude()
@JsonIgnoreProperties
public class UserRequest {
private static final long serialVersionUID = 1L;
	
	@JsonProperty("user_name")
	private String userName;
	
	@JsonProperty("password")
	private String password;

	
}
