package com.vladinooo.lovedance.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account")
public class OrdersController {

    private static final Logger logger = LoggerFactory.getLogger(OrdersController.class);


    @RequestMapping(value = "/orders")
    public String orders() {
        return "orders";
    }



}
