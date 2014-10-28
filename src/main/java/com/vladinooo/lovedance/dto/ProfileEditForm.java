package com.vladinooo.lovedance.dto;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.vladinooo.lovedance.entity.User;


public class ProfileEditForm {

	@Size(max=User.FIRSTNAME_MAX, message="{firstnameSizeError}")
	@Pattern(regexp=User.FIRSTNAME_PATTERN, message="{firstnamePatternError}")
	private String firstname;
	
	@Size(max=User.SURNAME_MAX, message="{surnameSizeError}")
	@Pattern(regexp=User.SURNAME_PATTERN, message="{surnamePatternError}")
	private String surname;
	
	@Size(max=User.PHONE_MAX, message="{phoneSizeError}")
	@Pattern(regexp=User.PHONE_PATTERN, message="{phonePatternError}")
	private String phone;
	
	@Size(max=User.BIOGRAPHY_MAX, message="{biographySizeError}")
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
