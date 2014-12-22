package com.vladinooo.lovedance.service;

import com.vladinooo.lovedance.dto.*;
import org.springframework.validation.BindingResult;

import com.vladinooo.lovedance.entity.User;

public interface UserService {
	
	public abstract void signup(SignupForm signupForm);
	
	public abstract void verify(String verificationCode);
	
	public abstract User findOne(long userId);

	public abstract void forgotPassword(ForgotPasswordForm forgotPasswordForm);

	public abstract void resetPassword(String forgotPasswordCode,
			ResetPasswordForm resetPasswordForm, BindingResult result);

	public abstract void profileUpdate(long userId, ProfileEditForm profileEditForm);
	
	public abstract void accountUpdate(long userId, AccountEditForm accountEditForm);

	public abstract void sendMessage(ContactForm contactForm);
	

}
