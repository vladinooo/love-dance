package com.vladinooo.lovedance.dto;

import com.vladinooo.lovedance.entity.Profile;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


public class ProfileEditForm {

	@Size(max=Profile.FIRSTNAME_MAX, message="{firstnameSizeError}")
	@Pattern(regexp=Profile.FIRSTNAME_PATTERN, message="{firstnamePatternError}")
	private String firstname;
	
	@Size(max=Profile.SURNAME_MAX, message="{surnameSizeError}")
	@Pattern(regexp=Profile.SURNAME_PATTERN, message="{surnamePatternError}")
	private String surname;
	
	@Size(max=Profile.PHONE_MAX, message="{phoneSizeError}")
	@Pattern(regexp=Profile.PHONE_PATTERN, message="{phonePatternError}")
	private String phone;
	
	@Size(max=Profile.BIOGRAPHY_MAX, message="{biographySizeError}")
	private String biography;

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
