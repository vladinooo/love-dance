package com.vladinooo.lovedance.validators;

import com.vladinooo.lovedance.dto.EditPasswordForm;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

import javax.validation.ParameterNameProvider;
import javax.validation.executable.ExecutableValidator;

@Component
public class EditPasswordFormValidator extends LocalValidatorFactoryBean {

	@Override
	public boolean supports(Class<?> clazz) {
		return clazz.isAssignableFrom(EditPasswordForm.class);
	}

	@Override
	public void validate(Object obj, Errors errors, final Object... validationHints) {

		super.validate(obj, errors, validationHints);

		if (!errors.hasErrors()) {
			EditPasswordForm editPasswordForm = (EditPasswordForm) obj;
			if (!editPasswordForm.getPassword().equals(editPasswordForm.getConfirmNewPassword())) {
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
