package com.vladinooo.lovedance.controller;

import com.vladinooo.lovedance.dto.ProfileEditForm;
import com.vladinooo.lovedance.dto.UserEditForm;
import com.vladinooo.lovedance.entity.Profile;
import com.vladinooo.lovedance.entity.User;
import com.vladinooo.lovedance.service.ProfileService;
import com.vladinooo.lovedance.service.UserService;
import com.vladinooo.lovedance.util.Util;
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

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	private UserService userService;
	private ProfileService profileService;
	
	@Autowired
	public UserController(UserService userService, ProfileService profileService) {
		this.userService = userService;
		this.profileService = profileService;
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
    	model.addAttribute("user", userService.getUser(Util.getSessionUser().getId()));
	  	return "profile";
    }
	
    
    @RequestMapping(value = "/profile/edit")
    public String editProfile(Model model) {
		User user = userService.getUser(Util.getSessionUser().getId());
		if (user.getProfile() == null) {
			Profile profile = new Profile();
			user.setProfile(profile);
		}
		ProfileEditForm form = new ProfileEditForm();
		form.setFirstname(user.getProfile().getFirstname());
		form.setSurname(user.getProfile().getSurname());
		form.setPhone(user.getProfile().getPhone());
		form.setBiography(user.getProfile().getBiography());
    	model.addAttribute(user);
    	model.addAttribute(form);
		return "profile-edit";
    }

	@RequestMapping(value = "/profile/edit", method = RequestMethod.POST)
	public String editProfile(@ModelAttribute("profileEditForm") @Valid ProfileEditForm profileEditForm,
			BindingResult result, RedirectAttributes redirectAttributes,
			HttpServletRequest request) throws ServletException {

		if (result.hasErrors()) {
			return "profile-edit";
		}
		profileService.editProfile(Util.getSessionUser().getId(), profileEditForm);
		Util.flash(redirectAttributes, "success", "editSuccessful");
		return "redirect:/user/profile";
	}
	
	@RequestMapping(value = "/photo/upload")
    public String profilePhotoUpload(Model model) {
		User user = userService.getUser(Util.getSessionUser().getId());
    	model.addAttribute(user);
		return "photo-upload";
    }
	
	@RequestMapping(value = "/account")
    public String getUser(Model model) {
    	model.addAttribute(userService.getUser(Util.getSessionUser().getId()));
	  	return "account";
    }
	
    
    @RequestMapping(value = "/account/edit")
    public String editUser(Model model) {
		User user = userService.getUser(Util.getSessionUser().getId());
		UserEditForm form = new UserEditForm();
		form.setEmail(user.getEmail());
    	model.addAttribute(form);
		return "account-edit";
    }

	@RequestMapping(value = "/account/edit", method = RequestMethod.POST)
	public String editUser(@ModelAttribute("userEditForm") @Valid UserEditForm userEditForm,
			BindingResult result, RedirectAttributes redirectAttributes,
			HttpServletRequest request) throws ServletException {

		if (result.hasErrors()) {
			return "account-edit";
		}
		userService.editUser(Util.getSessionUser().getId(), userEditForm);
		Util.flash(redirectAttributes, "success", "editSuccessful");
		return "redirect:/";
	}

}
