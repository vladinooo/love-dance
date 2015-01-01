package com.vladinooo.lovedance.controller;

import com.vladinooo.lovedance.dto.EditAccountForm;
import com.vladinooo.lovedance.dto.EditPasswordForm;
import com.vladinooo.lovedance.entity.Account;
import com.vladinooo.lovedance.service.AccountService;
import com.vladinooo.lovedance.util.Util;
import com.vladinooo.lovedance.validators.EditPasswordFormValidator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.Map;

@Controller
@RequestMapping("/account")
public class AccountController {
	
	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);
	
	private AccountService accountService;
	private EditPasswordFormValidator editPasswordFormValidator;
	
	@Autowired
	public AccountController(AccountService accountService, EditPasswordFormValidator editPasswordFormValidator) {
		this.accountService = accountService;
		this.editPasswordFormValidator = editPasswordFormValidator;
	}

	@InitBinder("editPasswordForm")
	protected void initEditPasswordBinder(WebDataBinder binder) {
		binder.setValidator(editPasswordFormValidator);
	}
	
	@RequestMapping("/{verificationCode}/verify")
	public String verify(@PathVariable("verificationCode") String verificationCode,
			RedirectAttributes redirectAttributes,
			HttpServletRequest request) throws ServletException {

		accountService.verify(verificationCode);
		Util.flash(redirectAttributes, "success", "verificationSuccess");
		logger.info("Verification successfull!");
		request.logout();
		return "redirect:/login";
	}

    @RequestMapping(value = "/settings")
    public String getSettings(Model model) {
		Account account = accountService.getAccount(Util.getCurrentSessionAccount().getId());
		EditAccountForm editAccountForm = new EditAccountForm();
		editAccountForm.setEmail(account.getEmail());
		editAccountForm.setFirstname(account.getFirstname());
		editAccountForm.setSurname(account.getSurname());
		editAccountForm.setPhone(account.getPhone());
		editAccountForm.setBiography(account.getBiography());

		EditPasswordForm editPasswordForm = new EditPasswordForm();
		editPasswordForm.setPassword(account.getPassword());
    	model.addAttribute(account);
    	model.addAttribute(editAccountForm);
		model.addAttribute(editPasswordForm);
		return "settings";
    }

	@RequestMapping(value = "/settings/edit-account-details", method = RequestMethod.POST)
	public String editAccountDetails(@ModelAttribute("editAccountForm") @Valid EditAccountForm editAccountForm,
			BindingResult result, RedirectAttributes redirectAttributes,
			HttpServletRequest request) throws ServletException {

		if (result.hasErrors()) {
			return "settings";
		}
		accountService.editAccount(Util.getCurrentSessionAccount().getId(), editAccountForm);
		Util.flash(redirectAttributes, "success", "editSuccessful");
		return "redirect:/account/settings";
	}

	@RequestMapping(value = "/settings/edit-account-password", method = RequestMethod.POST)
	public String editAccountPassword(@ModelAttribute("editPasswordForm") @Valid EditPasswordForm editPasswordForm,
									   BindingResult result, RedirectAttributes redirectAttributes,
									   HttpServletRequest request) throws ServletException {

		if (result.hasErrors()) {
			return "settings";
		}
		accountService.editPassword(Util.getCurrentSessionAccount().getId(), editPasswordForm);
		Util.flash(redirectAttributes, "success", "editSuccessful");
		return "redirect:/account/settings";
	}

	@ResponseBody
	@RequestMapping(value="/settings/delete-account", method = RequestMethod.POST)
	public String deleteAccount(@RequestBody Map<String, Object> accountData) {

		System.out.println("Unique Id: " + accountData.get("uniqueId"));
		return "settings";
	}


}
