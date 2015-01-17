package com.vladinooo.lovedance.dto;


import com.vladinooo.lovedance.entity.Account;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class ResendEmailConfirmForm {

    @NotNull
    @Size(min = 5, max = Account.EMAIL_MAX, message = "{emailSizeError}")
    @Pattern(regexp = Account.EMAIL_PATTERN, message = "{emailPatternError}")
    private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
