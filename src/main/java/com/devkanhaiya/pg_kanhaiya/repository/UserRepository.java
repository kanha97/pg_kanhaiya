package com.devkanhaiya.pg_kanhaiya.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.stereotype.Repository;

import com.devkanhaiya.pg_kanhaiya.entity.User;

@RepositoryRestResource(path = "users")
public interface UserRepository extends CrudRepository<User, Long> {

List<User> findByMobileNumberAndPassword(String mobileNumber,String password);

}
