package com.vladinooo.lovedance.controller;

import com.vladinooo.lovedance.service.AccountService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

    private AccountService accountService;

    @Autowired
    public AdminController(AccountService accountService) {
        this.accountService = accountService;
    }

    @RequestMapping(value = "/manage-accounts")
    public String getAccounts(Model model) {
        model.addAttribute("accounts", accountService.getAccounts());
        return "accounts";
    }

//    @ResponseBody
//    @RequestMapping(value = "/account/edit", method = RequestMethod.POST)
//    public String editAccount(@RequestBody Map<String, Object> accountData, Model model) {
//        logger.info("Edit user with Id: " + userData.get("uniqueId"));
//        Long userId = Long.valueOf(Base64EncoderDecoder.decode((String)userData.get("uniqueId")));
//        Account user = userService.getUser(userId);
//        if (user.getProfile() == null) {
//            Profile profile = new Profile();
//            user.setProfile(profile);
//        }
//        ProfileEditForm form = new ProfileEditForm();
//        form.setFirstname(user.getProfile().getFirstname());
//        form.setSurname(user.getProfile().getSurname());
//        form.setPhone(user.getProfile().getPhone());
//        form.setBiography(user.getProfile().getBiography());
//        model.addAttribute(user);
//        model.addAttribute(form);
//        return "profile-edit";
//    }
//
//    @ResponseBody
//    @RequestMapping(value="/user/delete", method = RequestMethod.POST)
//    public String adminDeleteUser(@RequestBody Map<String, Object> userData) {
//
//        logger.info("Unique Id: " + userData.get("uniqueId"));
//        return "users";
//    }

}
