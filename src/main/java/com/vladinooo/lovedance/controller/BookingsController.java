package com.vladinooo.lovedance.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account")
public class BookingsController {

    private static final Logger logger = LoggerFactory.getLogger(BookingsController.class);


    @RequestMapping(value = "/bookings")
    public String bookings() {
        return "bookings";
    }



}
