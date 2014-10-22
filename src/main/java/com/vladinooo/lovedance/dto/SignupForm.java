package com.vladinooo.lovedance.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.vladinooo.lovedance.entity.User;

public class SignupForm {
	
	@NotNull
	@Size(min = 5, max = 256)
	@Pattern(regexp=User.EMAIL_PATTERN, message="{emailPatternError}")
	private String email;
	private String password;
	

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
	
	
	@Override
	public String toString() {
		return "SignupForm [email=" + email + ", username=" + ", password="
				+ password + "]";
	}
}
