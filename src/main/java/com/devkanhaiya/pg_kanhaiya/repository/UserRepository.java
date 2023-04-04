package com.devkanhaiya.pg_kanhaiya.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devkanhaiya.pg_kanhaiya.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
}
