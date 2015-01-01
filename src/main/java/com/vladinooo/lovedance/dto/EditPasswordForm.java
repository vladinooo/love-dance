package com.vladinooo.lovedance.dto;

import com.vladinooo.lovedance.entity.Account;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


public class EditPasswordForm {

	@NotNull
	@Size(min=5, max= Account.PASSWORD_MAX, message="{passwordSizeError}")
	private String password;
	
	@NotNull
	@Size(min=5, max= Account.PASSWORD_MAX, message="{passwordSizeError}")
	private String newPassword;
	
	@NotNull
	@Size(min=5, max= Account.PASSWORD_MAX, message="{passwordSizeError}")
	private String confirmNewPassword;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getConfirmNewPassword() {
		return confirmNewPassword;
	}

	public void setConfirmNewPassword(String confirmNewPassword) {
		this.confirmNewPassword = confirmNewPassword;
	}
}
