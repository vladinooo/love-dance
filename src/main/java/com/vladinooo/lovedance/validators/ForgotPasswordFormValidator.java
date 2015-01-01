package com.vladinooo.lovedance.validators;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

import com.vladinooo.lovedance.dto.ForgotPasswordForm;
import com.vladinooo.lovedance.entity.Account;
import com.vladinooo.lovedance.repository.AccountRepository;

import javax.validation.ParameterNameProvider;
import javax.validation.executable.ExecutableValidator;

@Component
public class ForgotPasswordFormValidator extends LocalValidatorFactoryBean {
	
	private AccountRepository accountRepository;
	
	@Autowired
	public ForgotPasswordFormValidator(AccountRepository accountRepository) {
		this.accountRepository = accountRepository;
	}

	@Override
	public boolean supports(Class<?> clazz) {
		return clazz.isAssignableFrom(ForgotPasswordForm.class);
	}

	@Override
	public void validate(Object obj, Errors errors, final Object... validationHints) {
		
		super.validate(obj, errors, validationHints);
		
		if (!errors.hasErrors()) {
			ForgotPasswordForm forgotPasswordForm = (ForgotPasswordForm) obj;
			Account user = accountRepository.findByUsername(forgotPasswordForm.getUsername());
			if (user == null)
				errors.rejectValue("username", "notFound");			
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
