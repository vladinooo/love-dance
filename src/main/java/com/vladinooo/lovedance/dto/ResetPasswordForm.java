package com.vladinooo.lovedance.dto;

import com.vladinooo.lovedance.entity.Account;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class ResetPasswordForm {
	
	@NotNull
	@Size(min=1, max= Account.PASSWORD_MAX, message="{passwordSizeError}")
	private String password;
	
	@NotNull
	@Size(min=1, max= Account.PASSWORD_MAX, message="{passwordSizeError}")
	private String confirmPassword;

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
}
