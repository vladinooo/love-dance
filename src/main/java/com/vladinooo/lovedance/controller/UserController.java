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

import com.vladinooo.lovedance.dto.UserEditForm;
import com.vladinooo.lovedance.entity.User;
import com.vladinooo.lovedance.service.UserService;
import com.vladinooo.lovedance.util.Util;

@Controller
@RequestMapping("/users")
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
	
	@RequestMapping(value = "/{userId}")
    public String getById(@PathVariable("userId") long userId, Model model) {
    	model.addAttribute(userService.findOne(userId));
	  	return "view-profile";
    }
	
    
    @RequestMapping(value = "/{userId}/edit")
    public String edit(@PathVariable("userId") long userId, Model model) {
		User user = userService.findOne(userId);
		UserEditForm form = new UserEditForm();
		form.setFirstname(user.getFirstname());
		form.setSurname(user.getSurname());
		form.setEmail(user.getEmail());
		form.setPhone(user.getPhone());
    	model.addAttribute(form);
		return "edit-profile";
    }

	@RequestMapping(value = "/{userId}/edit", method = RequestMethod.POST)
	public String edit(@PathVariable("userId") long userId,
			@ModelAttribute("userEditForm") @Valid UserEditForm userEditForm,
			BindingResult result, RedirectAttributes redirectAttributes,
			HttpServletRequest request) throws ServletException {

		if (result.hasErrors()) {
			return "edit-profile";
		}
		userService.update(userId, userEditForm);
		Util.flash(redirectAttributes, "success", "editSuccessful");
		return "redirect:/users/{userId}";
	}

}
