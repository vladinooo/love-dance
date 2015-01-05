package com.vladinooo.lovedance.dto;

import com.vladinooo.lovedance.entity.Account;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


public class EditPasswordForm {

	@NotNull
	@Size(min=5, max= Account.PASSWORD_MAX, message="{currentPasswordSizeError}")
	private String currentPassword;
	
	@NotNull
	@Size(min=5, max= Account.PASSWORD_MAX, message="{newPasswordSizeError}")
	private String newPassword;
	
	@NotNull
	@Size(min=5, max= Account.PASSWORD_MAX, message="{confirmNewPasswordSizeError}")
	private String confirmNewPassword;

	public String getCurrentPassword() {
		return currentPassword;
	}

	public void setCurrentPassword(String currentPassword) {
		this.currentPassword = currentPassword;
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
