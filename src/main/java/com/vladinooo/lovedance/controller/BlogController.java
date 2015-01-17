package com.vladinooo.lovedance.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/blog")
public class BlogController {

    private static final Logger logger = LoggerFactory.getLogger(BlogController.class);


    @RequestMapping(value = "/articles")
    public String articles() {
        return "articles";
    }

    @RequestMapping(value = "/articles/article")
    public String article() {
        return "article";
    }


}
