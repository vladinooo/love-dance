package com.vladinooo.lovedance.dto;

import com.vladinooo.lovedance.entity.Account;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class ForgotPasswordForm {
	
	@NotNull
	@Size(min=5, max= Account.USERNAME_MAX, message="{usernameSizeError}")
	@Pattern(regexp= Account.USERNAME_PATTERN, message="{usernamePatternError}")
	private String username;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}
