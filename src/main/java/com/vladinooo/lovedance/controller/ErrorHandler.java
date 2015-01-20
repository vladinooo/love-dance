package com.vladinooo.lovedance.controller;

import com.vladinooo.lovedance.util.Util;
import org.springframework.boot.context.embedded.ConfigurableEmbeddedServletContainer;
import org.springframework.boot.context.embedded.EmbeddedServletContainerCustomizer;
import org.springframework.boot.context.embedded.ErrorPage;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/error")
public class ErrorHandler implements EmbeddedServletContainerCustomizer {

    @Override
    public void customize(final ConfigurableEmbeddedServletContainer factory) {
        factory.addErrorPages(new ErrorPage(HttpStatus.BAD_REQUEST, "/error/bad-request"));
        factory.addErrorPages(new ErrorPage(HttpStatus.UNAUTHORIZED, "/error/unauthorized"));
        factory.addErrorPages(new ErrorPage(HttpStatus.FORBIDDEN, "/error/forbidden"));
        factory.addErrorPages(new ErrorPage(HttpStatus.NOT_FOUND, "/error/not-found"));
        factory.addErrorPages(new ErrorPage(HttpStatus.INTERNAL_SERVER_ERROR, "/error/internal-server-error"));
    }

    @RequestMapping("bad-request")
    public String badRequest(Model model) {
        model.addAttribute("heading", Util.getMessage("error400Heading"));
        model.addAttribute("message", Util.getMessage("error400Message"));
        return "error";
    }

    @RequestMapping("unauthorized")
    public String unauthorized(Model model) {
        model.addAttribute("heading", Util.getMessage("error401Heading"));
        model.addAttribute("message", Util.getMessage("error401Message"));
        return "error";
    }

    @RequestMapping("forbidden")
    public String forbidden(Model model) {
        model.addAttribute("heading", Util.getMessage("error403Heading"));
        model.addAttribute("message", Util.getMessage("error403Message"));
        return "error";
    }

    @RequestMapping("not-found")
    public String notFound(Model model) {
        model.addAttribute("heading", Util.getMessage("error404Heading"));
        model.addAttribute("message", Util.getMessage("error404Message"));
        return "error";
    }

    @RequestMapping("internal-server-error")
    public String internalServerError(Model model) {
        model.addAttribute("heading", Util.getMessage("error500Heading"));
        model.addAttribute("message", Util.getMessage("error500Message"));
        return "error";
    }
}
