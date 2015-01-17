package com.vladinooo.lovedance.controller;

import com.vladinooo.lovedance.dto.EditAccountForm;
import com.vladinooo.lovedance.dto.EditPasswordForm;
import com.vladinooo.lovedance.dto.SubmitResponse;
import com.vladinooo.lovedance.dto.ValidationResponse;
import com.vladinooo.lovedance.entity.Account;
import com.vladinooo.lovedance.service.AccountService;
import com.vladinooo.lovedance.util.ResponseBuilder;
import com.vladinooo.lovedance.util.Util;
import com.vladinooo.lovedance.validators.EditPasswordFormValidator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
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

    @ResponseBody
    @RequestMapping(value = "/settings/edit-account-details", method = RequestMethod.POST)
    public SubmitResponse editAccountDetails(@ModelAttribute(value = "editAccountForm") @Valid EditAccountForm editAccountForm,
                                             BindingResult result) {
        accountService.editAccount(Util.getCurrentSessionAccount().getId(), editAccountForm);
        String submitSuccessMsgCode = "accountDetailsUpdateSuccess";
        return ResponseBuilder.createSubmitResponse(result, submitSuccessMsgCode);
    }

    @ResponseBody
    @RequestMapping(value = "/settings/edit-account-details.json", method = RequestMethod.POST)
    public ValidationResponse editAccountDetailsAjax(@ModelAttribute(value = "editAccountForm") @Valid EditAccountForm editAccountForm,
                                                     BindingResult result) {
        return ResponseBuilder.createValidationResponse(result);
    }

    @ResponseBody
    @RequestMapping(value = "/settings/edit-account-password", method = RequestMethod.POST)
    public SubmitResponse editAccountPassword(@ModelAttribute(value = "editPasswordForm") @Valid EditPasswordForm editPasswordForm,
                                              BindingResult result) {
        accountService.editPassword(Util.getCurrentSessionAccount().getId(), editPasswordForm);
        String submitSuccessMsgCode = "passwordUpdateSuccess";
        return ResponseBuilder.createSubmitResponse(result, submitSuccessMsgCode);
    }

    @ResponseBody
    @RequestMapping(value = "/settings/edit-account-password.json", method = RequestMethod.POST)
    public ValidationResponse editAccountPasswordAjax(@ModelAttribute(value = "editPasswordForm") @Valid EditPasswordForm editPasswordForm,
                                                      BindingResult result) {
        return ResponseBuilder.createValidationResponse(result);
    }


    @ResponseBody
    @RequestMapping(value = "/settings/delete-account", method = RequestMethod.POST)
    public String deleteAccount(@RequestBody Map<String, Object> accountData) {

        System.out.println("Unique Id: " + accountData.get("uniqueId"));
        return "settings";
    }


}
