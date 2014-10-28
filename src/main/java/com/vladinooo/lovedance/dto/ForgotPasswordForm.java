package com.vladinooo.lovedance.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import com.vladinooo.lovedance.entity.User;

public class ForgotPasswordForm {
	
	@NotNull
	@Pattern(regexp = User.USERNAME_PATTERN, message = "{usernamePatternError}")
	private String username;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}
