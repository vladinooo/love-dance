package com.vladinooo.lovedance.dto;

import com.vladinooo.lovedance.entity.Account;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


public class ContactForm {

    @Size(max=Account.FIRSTNAME_MAX, message="{nameSizeError}")
    @Pattern(regexp=Account.FIRSTNAME_PATTERN, message="{namePatternError}")
    private String name;

    @NotNull
    @Size(min=5, max= Account.EMAIL_MAX, message="{emailSizeError}")
    @Pattern(regexp= Account.EMAIL_PATTERN, message="{emailPatternError}")
    private String email;

    @NotNull
    @Size(min=10, max=1000, message="{messageSizeError}")
    private String message;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
