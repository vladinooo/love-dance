package com.vladinooo.lovedance.dto;

import com.vladinooo.lovedance.entity.Account;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class SignupForm {
	
	@NotNull
	@Size(min=5, max= Account.USERNAME_MAX, message="{usernameSizeError}")
	@Pattern(regexp= Account.USERNAME_PATTERN, message="{usernamePatternError}")
	private String username;

	@NotNull
	@Size(min=5, max= Account.EMAIL_MAX, message="{emailSizeError}")
	@Pattern(regexp= Account.EMAIL_PATTERN, message="{emailPatternError}")
	private String email;
	
	@NotNull
	@Size(min=5, max= Account.PASSWORD_MAX, message="{passwordSizeError}")
	private String password;
	
	@NotNull
	@Size(min=5, max= Account.PASSWORD_MAX, message="{passwordSizeError}")
	private String confirmPassword;
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	@Override
	public String toString() {
		return "SignupForm [email=" + email + ", username=" + ", password="
				+ password + "]";
	}
}
