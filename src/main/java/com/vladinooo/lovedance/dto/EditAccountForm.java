package com.vladinooo.lovedance.dto;

import com.vladinooo.lovedance.entity.Account;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


public class EditAccountForm {

	@NotNull
	@Size(min=5, max= Account.EMAIL_MAX, message="{emailSizeError}")
	@Pattern(regexp= Account.EMAIL_PATTERN, message="{emailPatternError}")
	private String email;

	@Size(max=Account.FIRSTNAME_MAX, message="{firstnameSizeError}")
	@Pattern(regexp=Account.FIRSTNAME_PATTERN, message="{firstnamePatternError}")
	private String firstname;
	
	@Size(max=Account.SURNAME_MAX, message="{surnameSizeError}")
	@Pattern(regexp=Account.SURNAME_PATTERN, message="{surnamePatternError}")
	private String surname;
	
	@Size(max=Account.PHONE_MAX, message="{phoneSizeError}")
	@Pattern(regexp=Account.PHONE_PATTERN, message="{phonePatternError}")
	private String phone;
	
	@Size(max=Account.BIOGRAPHY_MAX, message="{biographySizeError}")
	private String biography;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBiography() {
		return biography;
	}

	public void setBiography(String biography) {
		this.biography = biography;
	}

}
