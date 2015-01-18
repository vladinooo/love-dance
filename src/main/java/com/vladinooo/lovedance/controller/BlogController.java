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

    @RequestMapping(value = "/articles/article-01")
    public String article_01() {
        return "article-01";
    }

    @RequestMapping(value = "/articles/article-02")
    public String article_02() {
        return "article-02";
    }

    @RequestMapping(value = "/articles/article-03")
    public String article_03() {
        return "article-03";
    }

    @RequestMapping(value = "/articles/article-04")
    public String article_04() {
        return "article-04";
    }

    @RequestMapping(value = "/articles/article-05")
    public String article_05() {
        return "article-05";
    }

    @RequestMapping(value = "/articles/article-06")
    public String article_06() {
        return "article-06";
    }

    @RequestMapping(value = "/articles/article-07")
    public String article_07() {
        return "article-07";
    }

    @RequestMapping(value = "/articles/article-08")
    public String article_08() {
        return "article-08";
    }


}
