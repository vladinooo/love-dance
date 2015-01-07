package com.vladinooo.lovedance.controller;

import com.vladinooo.lovedance.dto.*;
import com.vladinooo.lovedance.service.AccountService;
import com.vladinooo.lovedance.util.Util;
import com.vladinooo.lovedance.validators.ForgotPasswordFormValidator;
import com.vladinooo.lovedance.validators.ResetPasswordFormValidator;
import com.vladinooo.lovedance.validators.SignupFormValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
public class RootController {


	private AccountService accountService;
	private SignupFormValidator signupFormValidator;
	private ForgotPasswordFormValidator forgotPasswordFormValidator;
	private ResetPasswordFormValidator resetPasswordFormValidator;

	@Autowired
	public RootController(AccountService accountService, SignupFormValidator signupFormValidator,
			ForgotPasswordFormValidator forgotPasswordFormValidator,
			ResetPasswordFormValidator resetPasswordFormValidator) {
		this.accountService = accountService;
		this.signupFormValidator = signupFormValidator;
		this.forgotPasswordFormValidator = forgotPasswordFormValidator;
		this.resetPasswordFormValidator = resetPasswordFormValidator;
	}

	@InitBinder("signupForm")
	protected void initSignupBinder(WebDataBinder binder) {
		binder.setValidator(signupFormValidator);
	}

	@InitBinder("forgotPasswordForm")
	protected void initForgotPasswordBinder(WebDataBinder binder) {
		binder.setValidator(forgotPasswordFormValidator);
	}

	@InitBinder("resetPasswordForm")
	protected void initResetPasswordBinder(WebDataBinder binder) {
		binder.setValidator(resetPasswordFormValidator);
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		model.addAttribute("contactForm", new ContactForm());
		return "home";
	}

	@RequestMapping(value = "/contact-me", method = RequestMethod.POST)
	public @ResponseBody
	PostResponse contactMe(@ModelAttribute(value = "contactForm") @Valid ContactForm contactForm, BindingResult result) {
		PostResponse postResponse = new PostResponse();
		if (!result.hasErrors()) {
			accountService.sendMessage(contactForm);
			postResponse.setStatus("SUCCESS");
			postResponse.setMessage(Util.getMessage("messageSentSuccess"));
		} else {
			postResponse.setStatus("FAIL");
			postResponse.setMessage("Edit Failed");
		}

		return postResponse;
	}

	@RequestMapping(value = "/contact-me.json", method = RequestMethod.POST)
	public @ResponseBody
	ValidationResponse contactMeAjax(@ModelAttribute(value = "contactForm") @Valid ContactForm contactForm, BindingResult result) {

		ValidationResponse validationResponse = new ValidationResponse();
		if (!result.hasErrors()) {
			validationResponse.setStatus("SUCCESS");
		} else {
			validationResponse.setStatus("FAIL");
			List<FieldError> allErrors = result.getFieldErrors();
			List<ErrorMessage> errorMesages = new ArrayList<ErrorMessage>();
			for (FieldError objectError : allErrors) {
				String message = objectError.getDefaultMessage();
				if (message == null) {
					message = Util.getMessage(objectError.getCode());
				}
				errorMesages.add(new ErrorMessage(objectError.getField(), message));
			}
			validationResponse.setErrorMessageList(errorMesages);
		}
		return validationResponse;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout,
			RedirectAttributes redirectAttributes) {

		if (error != null) {
			Util.flash(redirectAttributes, "alert-danger", "loginError");
			return "redirect:/login";
		}
		if (logout != null) {
			Util.flash(redirectAttributes, "alert-success", "logoutSuccess");
			return "redirect:/login";
		}
		return "login";
	}

	@RequestMapping(value="/signup", method = RequestMethod.GET)
	public String signup(Model model) {
		model.addAttribute("signupForm", new SignupForm());
		return "signup";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public @ResponseBody
	PostResponse signup(@ModelAttribute(value = "signupForm") @Valid SignupForm signupForm, BindingResult result) {
		PostResponse postResponse = new PostResponse();
		if (!result.hasErrors()) {
			accountService.signup(signupForm);
			postResponse.setStatus("SUCCESS");
			postResponse.setMessage(Util.getMessage("signupSuccess"));
		} else {
			postResponse.setStatus("FAIL");
			postResponse.setMessage("Signup Failed");
		}

		return postResponse;
	}

	@RequestMapping(value = "/signup.json", method = RequestMethod.POST)
	public @ResponseBody
	ValidationResponse signupAjax(@ModelAttribute(value = "signupForm") @Valid SignupForm signupForm,
			BindingResult result) {

		ValidationResponse validationResponse = new ValidationResponse();
		if (!result.hasErrors()) {
			validationResponse.setStatus("SUCCESS");
		} else {
			validationResponse.setStatus("FAIL");
			List<FieldError> allErrors = result.getFieldErrors();
			List<ErrorMessage> errorMesages = new ArrayList<ErrorMessage>();
			for (FieldError objectError : allErrors) {
				String message = objectError.getDefaultMessage();
				if (message == null) {
					message = Util.getMessage(objectError.getCode());
				}
				errorMesages.add(new ErrorMessage(objectError.getField(), message));
			}
			validationResponse.setErrorMessageList(errorMesages);
		}
		return validationResponse;
	}

//	@RequestMapping(value="/signup", method = RequestMethod.POST)
//	public String signup(@ModelAttribute("signupForm") @Valid SignupForm signupForm,
//			BindingResult result, RedirectAttributes redirectAttributes) {
//
//		if (result.hasErrors()) {
//			return "signup";
//		}
//		accountService.signup(signupForm);
//		Util.flash(redirectAttributes, "success", "signupSuccess");
//		return "redirect:/login";
//	}

	@RequestMapping(value = "/forgot-password", method = RequestMethod.GET)
	public String forgotPassword(Model model) {
		model.addAttribute(new ForgotPasswordForm());
		return "forgot-password";
	}

	@RequestMapping(value = "/forgot-password", method = RequestMethod.POST)
	public @ResponseBody
	PostResponse forgotPassword(@ModelAttribute(value = "forgotPasswordForm") @Valid ForgotPasswordForm forgotPasswordForm,
			BindingResult result) {
		PostResponse postResponse = new PostResponse();
		if (!result.hasErrors()) {
			accountService.forgotPassword(forgotPasswordForm);
			postResponse.setStatus("SUCCESS");
			postResponse.setMessage(Util.getMessage("checkMailResetPassword"));
		} else {
			postResponse.setStatus("FAIL");
			postResponse.setMessage("Forgot password Failed");
		}

		return postResponse;
	}

	@RequestMapping(value = "/forgot-password", method = RequestMethod.POST)
	public String forgotPassword(@ModelAttribute("forgotPasswordForm") @Valid ForgotPasswordForm forgotPasswordForm,
		BindingResult result, RedirectAttributes redirectAttributes) {

		if (result.hasErrors()) {
			return "forgot-password";
		}
		accountService.forgotPassword(forgotPasswordForm);
		Util.flash(redirectAttributes, "info", "checkMailResetPassword");
		return "redirect:/login";
	}

	@RequestMapping(value = "/reset-password/{forgotPasswordCode}", method = RequestMethod.GET)
    public String resetPassword(@PathVariable("forgotPasswordCode") String forgotPasswordCode, Model model) {
     	model.addAttribute(new ResetPasswordForm());
    	return "reset-password";
    }

	@RequestMapping(value = "/reset-password/{forgotPasswordCode}", method = RequestMethod.POST)
	public String resetPassword(@PathVariable("forgotPasswordCode") String forgotPasswordCode,
		@ModelAttribute("resetPasswordForm") @Valid ResetPasswordForm resetPasswordForm,
		BindingResult result, RedirectAttributes redirectAttributes) {
		accountService.resetPassword(forgotPasswordCode, resetPasswordForm, result);

		if (result.hasErrors()) {
			return "reset-password";
		}
		Util.flash(redirectAttributes, "success", "passwordReset");
		return "redirect:/login";
	}




}
