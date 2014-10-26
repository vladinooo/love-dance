package com.vladinooo.lovedance.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.vladinooo.lovedance.entity.User;

public class SignupForm {
	
	@NotNull
	@Size(min=5, max=User.USERNAME_MAX, message="{usernameSizeError}")
	@Pattern(regexp = "^[a-z0-9]{4,20}$", message = "{usernamePatternError}")
	private String username;

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

	public String getPassword() {
		return password;
	}
	
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

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRetypePassword() {
		return retypePassword;
	}

	public void setRetypePassword(String retypePassword) {
		this.retypePassword = retypePassword;
	}		

	
	
	@Override
	public String toString() {
		return "SignupForm [email=" + email + ", username=" + ", password="
				+ password + "]";
	}
}
