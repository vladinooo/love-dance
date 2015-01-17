package com.vladinooo.lovedance.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account")
public class ManageUsersController {

    private static final Logger logger = LoggerFactory.getLogger(ManageUsersController.class);


    @RequestMapping(value = "/manage-users")
    public String manageUsers() {
        return "manage-users";
    }



}
