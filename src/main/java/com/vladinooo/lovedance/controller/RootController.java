package com.vladinooo.lovedance.controller;

import com.vladinooo.lovedance.dto.ContactForm;
import com.vladinooo.lovedance.dto.ForgotPasswordForm;
import com.vladinooo.lovedance.dto.ResetPasswordForm;
import com.vladinooo.lovedance.dto.SignupForm;
import com.vladinooo.lovedance.service.UserService;
import com.vladinooo.lovedance.util.Util;
import com.vladinooo.lovedance.validators.ForgotPasswordFormValidator;
import com.vladinooo.lovedance.validators.ResetPasswordFormValidator;
import com.vladinooo.lovedance.validators.SignupFormValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class RootController {


	private UserService userService;
	private SignupFormValidator signupFormValidator;
	private ForgotPasswordFormValidator forgotPasswordFormValidator;
	private ResetPasswordFormValidator resetPasswordFormValidator;

	@Autowired
	public RootController(UserService userService, SignupFormValidator signupFormValidator,
			ForgotPasswordFormValidator forgotPasswordFormValidator,
			ResetPasswordFormValidator resetPasswordFormValidator) {
		this.userService = userService;
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

	@RequestMapping(value="/", method = RequestMethod.GET)
	public String home(Model model, HttpSession session) {
        if (session.getAttribute("failedContactForm") == null) {
            model.addAttribute("contactForm", new ContactForm());
        } else {
            model.addAttribute("contactForm", session.getAttribute("failedContactForm"));
            model.addAttribute("org.springframework.validation.BindingResult.contactForm", session.getAttribute("result"));
        }
		return "home";
	}

	@RequestMapping(value="/contact_me", method = RequestMethod.POST)
	public String contactMe(@Valid @ModelAttribute("contactForm") ContactForm contactForm,
						 BindingResult result, RedirectAttributes redirectAttributes, HttpSession session) {

		if (result.hasErrors()) {
            session.setAttribute("failedContactForm", contactForm);
            session.setAttribute("result", result);
			return "redirect:/#contact";
		}
		userService.sendMessage(contactForm);
		Util.flash(redirectAttributes, "success", "signupSuccess");
		return "redirect:/#contact";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout,
			RedirectAttributes redirectAttributes) {

		if (error != null) {
			Util.flash(redirectAttributes, "danger", "loginError");
			return "redirect:/login";
		}
		if (logout != null) {
			Util.flash(redirectAttributes, "success", "logoutSuccess");
			return "redirect:/login";
		}
		return "login";
	}

	@RequestMapping(value="/signup", method = RequestMethod.GET)
	public String signup(Model model) {
		model.addAttribute("signupForm", new SignupForm());
		return "signup";
	}

	@RequestMapping(value="/signup", method = RequestMethod.POST)
	public String signup(@ModelAttribute("signupForm") @Valid SignupForm signupForm,
			BindingResult result, RedirectAttributes redirectAttributes) {

		if (result.hasErrors()) {
			return "signup";
		}
		userService.signup(signupForm);
		Util.flash(redirectAttributes, "success", "signupSuccess");
		return "redirect:/login";
	}

	@RequestMapping(value = "/forgot-password", method = RequestMethod.GET)
	public String forgotPassword(Model model) {
		model.addAttribute(new ForgotPasswordForm());
		return "forgot-password";
	}

	@RequestMapping(value = "/forgot-password", method = RequestMethod.POST)
	public String forgotPassword(@ModelAttribute("forgotPasswordForm") @Valid ForgotPasswordForm forgotPasswordForm,
		BindingResult result, RedirectAttributes redirectAttributes) {

		if (result.hasErrors()) {
			return "forgot-password";
		}
		userService.forgotPassword(forgotPasswordForm);
		Util.flash(redirectAttributes, "info", "checkMailResetPassword");
		return "redirect:/login";
	}

	@RequestMapping(value = "/reset-password/{forgotPasswordCode}")
    public String resetPassword(@PathVariable("forgotPasswordCode") String forgotPasswordCode, Model model) {
     	model.addAttribute(new ResetPasswordForm());
    	return "reset-password";
    }

	@RequestMapping(value = "/reset-password/{forgotPasswordCode}", method = RequestMethod.POST)
	public String resetPassword(@PathVariable("forgotPasswordCode") String forgotPasswordCode,
		@ModelAttribute("resetPasswordForm") @Valid ResetPasswordForm resetPasswordForm,
		BindingResult result, RedirectAttributes redirectAttributes) {
		userService.resetPassword(forgotPasswordCode, resetPasswordForm, result);

		if (result.hasErrors()) {
			return "reset-password";
		}
		Util.flash(redirectAttributes, "success", "passwordChanged");
		return "redirect:/login";
	}


}
