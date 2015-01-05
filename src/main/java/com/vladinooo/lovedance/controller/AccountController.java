package com.vladinooo.lovedance.controller;

import com.vladinooo.lovedance.dto.EditAccountForm;
import com.vladinooo.lovedance.dto.EditPasswordForm;
import com.vladinooo.lovedance.dto.ErrorMessage;
import com.vladinooo.lovedance.dto.ValidationResponse;
import com.vladinooo.lovedance.dto.PostResponse;
import com.vladinooo.lovedance.entity.Account;
import com.vladinooo.lovedance.service.AccountService;
import com.vladinooo.lovedance.util.Util;
import com.vladinooo.lovedance.validators.EditPasswordFormValidator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/account")
public class AccountController {

    private static final Logger logger = LoggerFactory.getLogger(AccountController.class);

    private AccountService accountService;
    private EditPasswordFormValidator editPasswordFormValidator;

    @Autowired
    public AccountController(AccountService accountService, EditPasswordFormValidator editPasswordFormValidator) {
        this.accountService = accountService;
        this.editPasswordFormValidator = editPasswordFormValidator;
    }

    @InitBinder("editPasswordForm")
    protected void initEditPasswordBinder(WebDataBinder binder) {
        binder.setValidator(editPasswordFormValidator);
    }

    @RequestMapping(value = "/{verificationCode}/verify", method = RequestMethod.GET)
    public String verify(@PathVariable("verificationCode") String verificationCode,
                         RedirectAttributes redirectAttributes,
                         HttpServletRequest request) throws ServletException {

        accountService.verify(verificationCode);
        Util.flash(redirectAttributes, "success", "verificationSuccess");
        logger.info("Verification successfull!");
        request.logout();
        return "redirect:/login";
    }

    @RequestMapping(value = "/settings", method = RequestMethod.GET)
    public String getSettings(Model model) {
        EditAccountForm editAccountForm = new EditAccountForm();
        EditPasswordForm editPasswordForm = new EditPasswordForm();
        Account account = accountService.getAccount(Util.getCurrentSessionAccount().getId());
        editAccountForm.setEmail(account.getEmail());
        editAccountForm.setFirstname(account.getFirstname());
        editAccountForm.setSurname(account.getSurname());
        editAccountForm.setPhone(account.getPhone());
        editAccountForm.setBiography(account.getBiography());

        editPasswordForm.setCurrentPassword(account.getPassword());
        model.addAttribute(account);
        model.addAttribute(editAccountForm);
        model.addAttribute(editPasswordForm);
        return "settings";
    }

    @RequestMapping(value = "/settings/edit-account-details", method = RequestMethod.POST)
    public @ResponseBody
    PostResponse editAccountDetails(@ModelAttribute(value = "editAccountForm") @Valid EditAccountForm editAccountForm,
            BindingResult result) {
        PostResponse postResponse = new PostResponse();
        if (!result.hasErrors()) {
            accountService.editAccount(Util.getCurrentSessionAccount().getId(), editAccountForm);
            postResponse.setStatus("SUCCESS");
            postResponse.setMessage(Util.getMessage("accountDetailsUpdateSuccess"));
        } else {
            postResponse.setStatus("FAIL");
            postResponse.setMessage("Edit Failed");
        }

        return postResponse;
    }

    @RequestMapping(value = "/settings/edit-account-details.json", method = RequestMethod.POST)
    public @ResponseBody
    ValidationResponse editAccountDetailsAjax(@ModelAttribute(value = "editAccountForm") @Valid EditAccountForm editAccountForm,
            BindingResult result) {

        ValidationResponse validationResponse = new ValidationResponse();
        if (!result.hasErrors()) {
            validationResponse.setStatus("SUCCESS");
        } else {
            validationResponse.setStatus("FAIL");
            List<FieldError> allErrors = result.getFieldErrors();
            List<ErrorMessage> errorMesages = new ArrayList<ErrorMessage>();
            for (FieldError objectError : allErrors) {
                String message = objectError.getDefaultMessage();
                if (message == null) {
                    message = Util.getMessage(objectError.getCode());
                }
                errorMesages.add(new ErrorMessage(objectError.getField(), message));
            }
            validationResponse.setErrorMessageList(errorMesages);
        }
        return validationResponse;
    }

    @RequestMapping(value = "/settings/edit-account-password", method = RequestMethod.POST)
    public @ResponseBody
    PostResponse editAccountPassword(@ModelAttribute(value = "editPasswordForm") @Valid EditPasswordForm editPasswordForm,
            BindingResult result) {

        PostResponse postResponse = new PostResponse();
        if (!result.hasErrors()) {
            accountService.editPassword(Util.getCurrentSessionAccount().getId(), editPasswordForm);
            postResponse.setStatus("SUCCESS");
            postResponse.setMessage(Util.getMessage("passwordUpdateSuccess"));
        } else {
            postResponse.setStatus("FAIL");
            postResponse.setMessage("Edit Failed");
        }

        return postResponse;
    }

    @RequestMapping(value = "/settings/edit-account-password.json", method = RequestMethod.POST)
    public @ResponseBody
    ValidationResponse editAccountPasswordAjax(@ModelAttribute(value = "editPasswordForm") @Valid EditPasswordForm editPasswordForm,
            BindingResult result) {

        ValidationResponse validationResponse = new ValidationResponse();
        if (!result.hasErrors()) {
            validationResponse.setStatus("SUCCESS");
        } else {
            validationResponse.setStatus("FAIL");
            List<FieldError> allErrors = result.getFieldErrors();
            List<ErrorMessage> errorMesages = new ArrayList<ErrorMessage>();
            for (FieldError objectError : allErrors) {
                String message = objectError.getDefaultMessage();
                if (message == null) {
                    message = Util.getMessage(objectError.getCode());
                }
                errorMesages.add(new ErrorMessage(objectError.getField(), message));
            }
            validationResponse.setErrorMessageList(errorMesages);
        }
        return validationResponse;
    }





    @ResponseBody
    @RequestMapping(value = "/settings/delete-account", method = RequestMethod.POST)
    public String deleteAccount(@RequestBody Map<String, Object> accountData) {

        System.out.println("Unique Id: " + accountData.get("uniqueId"));
        return "settings";
    }


}
