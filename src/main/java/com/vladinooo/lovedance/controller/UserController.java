package com.vladinooo.lovedance.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.vladinooo.lovedance.dto.AccountEditForm;
import com.vladinooo.lovedance.dto.ProfileEditForm;
import com.vladinooo.lovedance.entity.User;
import com.vladinooo.lovedance.service.UserService;
import com.vladinooo.lovedance.util.Util;

@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	private UserService userService;
	
	@Autowired
	public UserController(UserService userService) {
		this.userService = userService;
	}
	
	
	@RequestMapping("/{verificationCode}/verify")
	public String verify(@PathVariable("verificationCode") String verificationCode,
			RedirectAttributes redirectAttributes,
			HttpServletRequest request) throws ServletException {
		
		userService.verify(verificationCode);
		Util.flash(redirectAttributes, "success", "verificationSuccess");
		logger.info("Verification successfull!");
		request.logout();
		return "redirect:/login";
	}
	
	@RequestMapping(value = "/profile")
    public String getProfileById(Model model) {
    	model.addAttribute(userService.findOne(Util.getSessionUser().getId()));
	  	return "profile";
    }
	
    
    @RequestMapping(value = "/profile/edit")
    public String profileEdit(Model model) {
		User user = userService.findOne(Util.getSessionUser().getId());
		ProfileEditForm form = new ProfileEditForm();
		form.setFirstname(user.getFirstname());
		form.setSurname(user.getSurname());
		form.setPhone(user.getPhone());
		form.setBiography(user.getBiography());
    	model.addAttribute(user);
    	model.addAttribute(form);
		return "profile-edit";
    }

	@RequestMapping(value = "/profile/edit", method = RequestMethod.POST)
	public String profileEdit(@ModelAttribute("profileEditForm") @Valid ProfileEditForm profileEditForm,
			BindingResult result, RedirectAttributes redirectAttributes,
			HttpServletRequest request) throws ServletException {

		if (result.hasErrors()) {
			return "profile-edit";
		}
		userService.profileUpdate(Util.getSessionUser().getId(), profileEditForm);
		Util.flash(redirectAttributes, "success", "editSuccessful");
		return "redirect:/user/profile";
	}
	
	@RequestMapping(value = "/account")
    public String getAccountById(Model model) {
    	model.addAttribute(userService.findOne(Util.getSessionUser().getId()));
	  	return "account";
    }
	
    
    @RequestMapping(value = "/account/edit")
    public String accountEdit(Model model) {
		User user = userService.findOne(Util.getSessionUser().getId());
		AccountEditForm form = new AccountEditForm();
		form.setEmail(user.getEmail());
    	model.addAttribute(form);
		return "account-edit";
    }

	@RequestMapping(value = "/account/edit", method = RequestMethod.POST)
	public String accountEdit(@ModelAttribute("accountEditForm") @Valid AccountEditForm accountEditForm,
			BindingResult result, RedirectAttributes redirectAttributes,
			HttpServletRequest request) throws ServletException {

		if (result.hasErrors()) {
			return "account-edit";
		}
		userService.accountUpdate(Util.getSessionUser().getId(), accountEditForm);
		Util.flash(redirectAttributes, "success", "editSuccessful");
		return "redirect:/user/account";
	}

}
