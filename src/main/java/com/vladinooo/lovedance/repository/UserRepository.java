package com.vladinooo.lovedance.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vladinooo.lovedance.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String email);

	User findByForgotPasswordCode(String forgotPasswordCode);

}
