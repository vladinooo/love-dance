package com.vladinooo.lovedance.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

public class ForgotPasswordForm {
	
	@NotNull
	@Pattern(regexp = "^[a-z0-9]{4,20}$", message = "{usernamePatternError}")
	private String username;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}
