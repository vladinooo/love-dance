package com.vladinooo.lovedance.service;

import org.springframework.validation.BindingResult;

import com.vladinooo.lovedance.dto.ForgotPasswordForm;
import com.vladinooo.lovedance.dto.ResetPasswordForm;
import com.vladinooo.lovedance.dto.SignupForm;
import com.vladinooo.lovedance.dto.UserEditForm;
import com.vladinooo.lovedance.entity.User;

public interface UserService {
	
	public abstract void signup(SignupForm signupForm);
	
	public abstract void verify(String verificationCode);
	
	public abstract User findOne(long userId);

	public abstract void forgotPassword(ForgotPasswordForm forgotPasswordForm);

	public abstract void resetPassword(String forgotPasswordCode,
			ResetPasswordForm resetPasswordForm, BindingResult result);

	public abstract void update(long userId, UserEditForm userEditForm);
	

}
