package com.vladinooo.lovedance.validators;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

import com.vladinooo.lovedance.dto.ResetPasswordForm;
import com.vladinooo.lovedance.dto.SignupForm;
import com.vladinooo.lovedance.entity.User;
import com.vladinooo.lovedance.repository.UserRepository;

@Component
public class SignupFormValidator extends LocalValidatorFactoryBean {

	private UserRepository userRepository;

	@Autowired
	public SignupFormValidator(UserRepository userRepository) {
		this.userRepository = userRepository;
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
			User user = userRepository.findByUsername(signupForm.getUsername());
			if (user != null) {
				errors.rejectValue("username", "usernameNotUnique");
			}
			if (!signupForm.getPassword().equals(signupForm.getRetypePassword())) {
				errors.rejectValue("retypePassword", "passwordsDoNotMatch");
			}
		}
	}

}
