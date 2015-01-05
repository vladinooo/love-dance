package com.vladinooo.lovedance.validators;

import com.vladinooo.lovedance.dto.EditPasswordForm;
import com.vladinooo.lovedance.entity.Account;
import com.vladinooo.lovedance.service.AccountService;
import com.vladinooo.lovedance.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

import javax.validation.ParameterNameProvider;
import javax.validation.executable.ExecutableValidator;

@Component
public class EditPasswordFormValidator extends LocalValidatorFactoryBean {

	private AccountService accountService;
	private PasswordEncoder passwordEncoder;

	@Autowired
	public EditPasswordFormValidator(AccountService accountService, PasswordEncoder passwordEncoder) {
		this.accountService = accountService;
		this.passwordEncoder = passwordEncoder;
	}

	@Override
	public boolean supports(Class<?> clazz) {
		return clazz.isAssignableFrom(EditPasswordForm.class);
	}

	@Override
	public void validate(Object obj, Errors errors, final Object... validationHints) {

		super.validate(obj, errors, validationHints);

		if (!errors.hasErrors()) {
			EditPasswordForm editPasswordForm = (EditPasswordForm) obj;
			Account account = accountService.getAccount(Util.getCurrentSessionAccount().getId());
			if (!passwordEncoder.matches(editPasswordForm.getCurrentPassword(), account.getPassword())) {
				errors.rejectValue("currentPassword", "invalidCurrentPassword");
			}
			if (!editPasswordForm.getNewPassword().equals(editPasswordForm.getConfirmNewPassword())) {
				errors.rejectValue("confirmNewPassword", "passwordsDoNotMatch");
			}
		}
	}

	@Override
	public ExecutableValidator forExecutables() {
		return null;
	}

	@Override
	public ParameterNameProvider getParameterNameProvider() {
		return null;
	}

}
