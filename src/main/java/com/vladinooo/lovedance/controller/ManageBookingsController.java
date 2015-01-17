package com.vladinooo.lovedance.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account")
public class ManageBookingsController {

    private static final Logger logger = LoggerFactory.getLogger(ManageBookingsController.class);


    @RequestMapping(value = "/manage-bookings")
    public String manageBookings() {
        return "manage-bookings";
    }



}
