package com.vladinooo.lovedance.validators;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

import com.vladinooo.lovedance.dto.ResetPasswordForm;

import javax.validation.ParameterNameProvider;
import javax.validation.executable.ExecutableValidator;

@Component
public class ResetPasswordFormValidator extends LocalValidatorFactoryBean {
	
	@Override
	public boolean supports(Class<?> clazz) {
		return clazz.isAssignableFrom(ResetPasswordForm.class);
	}

	@Override
	public void validate(Object obj, Errors errors, final Object... validationHints) {
		
		super.validate(obj, errors, validationHints);
		
		if (!errors.hasErrors()) {
			ResetPasswordForm resetPasswordForm = (ResetPasswordForm) obj;
			if (!resetPasswordForm.getNewPassword().equals(resetPasswordForm.getConfirmNewPassword())) {
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
