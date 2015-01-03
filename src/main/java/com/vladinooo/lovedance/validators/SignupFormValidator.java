package com.vladinooo.lovedance.validators;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

import com.vladinooo.lovedance.dto.SignupForm;
import com.vladinooo.lovedance.entity.Account;
import com.vladinooo.lovedance.repository.AccountRepository;

import javax.validation.ParameterNameProvider;
import javax.validation.executable.ExecutableValidator;

@Component
public class SignupFormValidator extends LocalValidatorFactoryBean {

	private AccountRepository accountRepository;

	@Autowired
	public SignupFormValidator(AccountRepository accountRepository) {
		this.accountRepository = accountRepository;
	}

	@Override
	public boolean supports(Class<?> clazz) {
		return clazz.isAssignableFrom(SignupForm.class);
	}

	@Override
	public void validate(Object obj, Errors errors, final Object... validationHints) {

		super.validate(obj, errors, validationHints);

		if (!errors.hasErrors()) {
			SignupForm signupForm = (SignupForm) obj;
			Account account = accountRepository.findByUsername(signupForm.getUsername());
			if (account != null) {
				errors.rejectValue("username", "usernameNotUnique");
			}
			if (!signupForm.getPassword().equals(signupForm.getConfirmPassword())) {
				errors.rejectValue("confirmPassword", "passwordsDoNotMatch");
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
