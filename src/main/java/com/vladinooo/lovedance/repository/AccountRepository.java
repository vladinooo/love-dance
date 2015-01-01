package com.vladinooo.lovedance.repository;

import com.vladinooo.lovedance.entity.Account;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AccountRepository extends JpaRepository<Account, Long> {

	List<Account> findAll();

	Account findByUsername(String username);

	Account findByForgotPasswordCode(String forgotPasswordCode);

}
