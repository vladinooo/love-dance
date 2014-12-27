package com.vladinooo.lovedance.repository;

import com.vladinooo.lovedance.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {

	List<User> findAll();

	User findByUsername(String username);

	User findByForgotPasswordCode(String forgotPasswordCode);

}
