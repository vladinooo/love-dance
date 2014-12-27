package com.vladinooo.lovedance.service;

import com.vladinooo.lovedance.dto.*;
import org.springframework.validation.BindingResult;

import com.vladinooo.lovedance.entity.User;

import java.util.List;

public interface UserService {
	
	public abstract void signup(SignupForm signupForm);
	
	public abstract void verify(String verificationCode);
	
	public abstract User getUser(long userId);

	public abstract List<User> getUsers();

	public abstract void forgotPassword(ForgotPasswordForm forgotPasswordForm);

	public abstract void resetPassword(String forgotPasswordCode,
			ResetPasswordForm resetPasswordForm, BindingResult result);
	
	public abstract void editUser(long userId, UserEditForm userEditForm);

	//public abstract void deleteUser(long userId, UserEditForm userEditForm);

	public abstract void sendMessage(ContactForm contactForm);
	

}
