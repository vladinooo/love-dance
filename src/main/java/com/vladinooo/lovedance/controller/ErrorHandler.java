package com.vladinooo.lovedance.controller;

import org.springframework.boot.context.embedded.ConfigurableEmbeddedServletContainer;
import org.springframework.boot.context.embedded.EmbeddedServletContainerCustomizer;
import org.springframework.boot.context.embedded.ErrorPage;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/error")
public class ErrorHandler implements EmbeddedServletContainerCustomizer {

    @Override
    public void customize(final ConfigurableEmbeddedServletContainer factory) {
        factory.addErrorPages(new ErrorPage(HttpStatus.NOT_FOUND, "/error/notfound"));
    }


    @RequestMapping("notfound")
    public String notFound() {
        return "404-error";
    }
}
