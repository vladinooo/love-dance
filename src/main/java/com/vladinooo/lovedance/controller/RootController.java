package com.vladinooo.lovedance.controller;

import com.vladinooo.lovedance.dto.*;
import com.vladinooo.lovedance.service.AccountService;
import com.vladinooo.lovedance.util.ResponseBuilder;
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
        model.addAttribute(new ContactForm());
        return "home";
    }

    @ResponseBody
    @RequestMapping(value = "/contact-me", method = RequestMethod.POST)
    public SubmitResponse contactMe(@ModelAttribute(value = "contactForm") @Valid ContactForm contactForm, BindingResult result) {
        accountService.sendMessage(contactForm);
        String submitSuccessMsgCode = "messageSentSuccess";
        return ResponseBuilder.createSubmitResponse(result, submitSuccessMsgCode);
    }

    @ResponseBody
    @RequestMapping(value = "/contact-me.json", method = RequestMethod.POST)
    public ValidationResponse contactMeAjax(@ModelAttribute(value = "contactForm") @Valid ContactForm contactForm, BindingResult result) {
        return ResponseBuilder.createValidationResponse(result);
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

    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String signup(Model model) {
        model.addAttribute(new SignupForm());
        return "signup";
    }

    @ResponseBody
    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public SubmitResponse signup(@ModelAttribute(value = "signupForm") @Valid SignupForm signupForm, BindingResult result,
                                 HttpSession session) {
        accountService.signup(signupForm);
        session.setAttribute("email", signupForm.getEmail());
        String submitSuccessMsgCode = "signupSuccess";
        return ResponseBuilder.createSubmitResponse(result, submitSuccessMsgCode);
    }

    @ResponseBody
    @RequestMapping(value = "/signup.json", method = RequestMethod.POST)
    public ValidationResponse signupAjax(@ModelAttribute(value = "signupForm") @Valid SignupForm signupForm,
                                         BindingResult result) {
        return ResponseBuilder.createValidationResponse(result);
    }

    @RequestMapping(value = "/signup/confirm", method = RequestMethod.GET)
    public String confirmEmail(Model model, HttpSession session) {
        model.addAttribute("verifyEmailInfo", Util.getMessage("verifyEmailInfo", session.getAttribute("email")));
        return "confirm-email";
    }

    @RequestMapping(value = "/forgot-password", method = RequestMethod.GET)
    public String forgotPassword(Model model) {
        model.addAttribute(new ForgotPasswordForm());
        return "forgot-password";
    }

    @ResponseBody
    @RequestMapping(value = "/forgot-password", method = RequestMethod.POST)
    public SubmitResponse forgotPassword(@ModelAttribute(value = "forgotPasswordForm") @Valid ForgotPasswordForm forgotPasswordForm,
                                         BindingResult result) {
        accountService.forgotPassword(forgotPasswordForm);
        String submitSuccessMsgCode = "checkMailResetPassword";
        return ResponseBuilder.createSubmitResponse(result, submitSuccessMsgCode);
    }

    @ResponseBody
    @RequestMapping(value = "/forgot-password.json", method = RequestMethod.POST)
    public ValidationResponse forgotPasswordAjax(@ModelAttribute(value = "forgotPasswordForm") @Valid ForgotPasswordForm forgotPasswordForm,
                                                 BindingResult result) {
        return ResponseBuilder.createValidationResponse(result);
    }

    @RequestMapping(value = "/reset-password/{forgotPasswordCode}", method = RequestMethod.GET)
    public String resetPassword(Model model) {
        model.addAttribute(new ResetPasswordForm());
        return "reset-password";
    }

    @ResponseBody
    @RequestMapping(value = "/reset-password/{forgotPasswordCode}", method = RequestMethod.POST)
    public SubmitResponse resetPassword(@PathVariable("forgotPasswordCode") String forgotPasswordCode,
                                        @ModelAttribute("resetPasswordForm") @Valid ResetPasswordForm resetPasswordForm, BindingResult result) {
        accountService.resetPassword(forgotPasswordCode, resetPasswordForm, result);
        String submitSuccessMsgCode = "passwordResetSuccess";
        return ResponseBuilder.createSubmitResponse(result, submitSuccessMsgCode);
    }

    @RequestMapping(value = "/reset-password.json", method = RequestMethod.POST)
    public
    @ResponseBody
    ValidationResponse resetPasswordAjax(@ModelAttribute("resetPasswordForm") @Valid ResetPasswordForm resetPasswordForm,
                                         BindingResult result) {
        return ResponseBuilder.createValidationResponse(result);
    }

}
