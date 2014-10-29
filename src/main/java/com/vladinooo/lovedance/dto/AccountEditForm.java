package com.vladinooo.lovedance.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.vladinooo.lovedance.entity.User;


public class AccountEditForm {

	@NotNull
	@Size(min=5, max=User.EMAIL_MAX, message="{emailSizeError}")
	@Pattern(regexp=User.EMAIL_PATTERN, message="{emailPatternError}")
	private String email;
	
	@NotNull
	@Size(min=5, max=User.PASSWORD_MAX, message="{passwordSizeError}")
	private String password;
	
	@NotNull
	@Size(min=5, max=User.PASSWORD_MAX, message="{passwordSizeError}")
	private String retypePassword;

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

	public String getRetypePassword() {
		return retypePassword;
	}

	public void setRetypePassword(String retypePassword) {
		this.retypePassword = retypePassword;
	}		


}
