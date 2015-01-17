package com.vladinooo.lovedance.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account")
public class ManageShopController {

    private static final Logger logger = LoggerFactory.getLogger(ManageShopController.class);


    @RequestMapping(value = "/manage-shop")
    public String manageShop() {
        return "manage-shop";
    }



}
