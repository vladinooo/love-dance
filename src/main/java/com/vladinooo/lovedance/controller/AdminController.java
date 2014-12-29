package com.vladinooo.lovedance.controller;

import com.vladinooo.lovedance.dto.ProfileEditForm;
import com.vladinooo.lovedance.entity.Profile;
import com.vladinooo.lovedance.entity.User;
import com.vladinooo.lovedance.service.UserService;
import com.vladinooo.lovedance.util.Base64EncoderDecoder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

    private UserService userService;

    @Autowired
    public AdminController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/users")
    public String getUsers(Model model) {
        model.addAttribute("users", userService.getUsers());
        return "users";
    }

    @ResponseBody
    @RequestMapping(value = "/user/edit", method = RequestMethod.POST)
    public String adminEditUser(@RequestBody Map<String, Object> userData, Model model) {
        System.out.println("Edit user with Id: " + userData.get("uniqueId"));
        Long userId = Long.valueOf(Base64EncoderDecoder.decode((String)userData.get("uniqueId")));
        User user = userService.getUser(userId);
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

    @ResponseBody
    @RequestMapping(value="/user/delete", method = RequestMethod.POST)
    public String adminDeleteUser(@RequestBody Map<String, Object> userData) {

        System.out.println("Unique Id: " + userData.get("uniqueId"));
        return "users";
    }

}
