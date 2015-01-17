package com.vladinooo.lovedance.service;

import com.vladinooo.lovedance.dto.*;
import org.springframework.validation.BindingResult;

import com.vladinooo.lovedance.entity.Account;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface AccountService {
	
	public abstract void signup(SignupForm signupForm, HttpSession session);
	
	public abstract void confirmEmail(String confirmationCode);

	public abstract void sendEmailConfirmLink(Account account);

	public abstract Account getAccount(long accountId);

	public abstract List<Account> getAccounts();

	public abstract void forgotPassword(ForgotPasswordForm forgotPasswordForm);

	public abstract void resetPassword(String forgotPasswordCode,
			ResetPasswordForm resetPasswordForm, BindingResult result);
	
	public abstract void editAccount(long accountId, EditAccountForm editAccountForm);

	public abstract void editPassword(long accountId, EditPasswordForm editPasswordForm);

	public abstract void sendMessage(ContactForm contactForm);
	

}
