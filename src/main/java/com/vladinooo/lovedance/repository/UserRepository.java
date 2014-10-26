package com.vladinooo.lovedance.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vladinooo.lovedance.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByUsername(String username);

	User findByForgotPasswordCode(String forgotPasswordCode);

}
