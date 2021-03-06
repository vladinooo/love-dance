package com.vladinooo.lovedance.entity;

import com.vladinooo.lovedance.util.Base64EncoderDecoder;
import com.vladinooo.lovedance.util.Util;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(indexes = {
		@Index(columnList = "username", unique = true),
		@Index(columnList = "forgotPasswordCode", unique=true)
})
public class Account {
	
	public static final int USERNAME_MAX = 20;
	public static final String USERNAME_PATTERN = "^[a-z0-9]{4,20}$";
	
	public static final int EMAIL_MAX = 256;
	public static final String EMAIL_PATTERN = "[A-Za-z0-9._%-+]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
	
	public static final int PASSWORD_MAX = 20;
	public static final String PASSWORD_PATTERN = "/^[a-z0-9_-]{4,20}$/";

	public static final int FIRSTNAME_MAX = 50;
	public static final String FIRSTNAME_PATTERN = "[a-zA-Z ]{0,50}";

	public static final int SURNAME_MAX = 50;
	public static final String SURNAME_PATTERN = "[a-zA-Z ]{0,50}";

	public static final int PHONE_MAX = 30;
	public static final String PHONE_PATTERN = "[0-9()-]{0,30}";

	public static final int BIOGRAPHY_MAX = 2000;

	public static final int RANDOM_CODE_LENGTH = 16;

	public static enum Role {
		UNVERIFIED, BLOCKED, ADMIN
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;

	private String encodedId;
	
	@Column(nullable = false, length = USERNAME_MAX)
	private String username;

	@Column(nullable = false, length = EMAIL_MAX)
	private String email;

	@Column(nullable = false)
	private String password;

	@Column(length = FIRSTNAME_MAX)
	private String firstname;

	@Column(length = SURNAME_MAX)
	private String surname;

	@Column(length = PHONE_MAX)
	private String phone;

	@Column(length = BIOGRAPHY_MAX)
	private String biography;
	
	@Column(nullable = false)
	private String datetimeRegistered;
	
	@Column(nullable = false)
	private boolean enabled;
	
	@ElementCollection(fetch = FetchType.EAGER)
	private Set<Role> roles = new HashSet<Role>();
	
	@Column(length = RANDOM_CODE_LENGTH)
	private String emailConfirmCode;
	
	@Column(length = RANDOM_CODE_LENGTH)
	private String forgotPasswordCode;

	public long getId() {
		return id;
	}

	public String getEncodedId() {
		return Base64EncoderDecoder.encode(Long.toString(id));
	}

	public void setId(long id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getDatetimeRegistered() {
		return datetimeRegistered;
	}

	public void setDatetimeRegistered(String datetimeRegistered) {
		this.datetimeRegistered = datetimeRegistered;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	public void setEncodedId(String encodedId) {
		this.encodedId = encodedId;
	}

	public String getEmailConfirmCode() {
		return emailConfirmCode;
	}

	public void setEmailConfirmCode(String emailConfirmCode) {
		this.emailConfirmCode = emailConfirmCode;
	}

	public boolean isAdmin() {
		return roles.contains(Role.ADMIN);
	}

	public String getForgotPasswordCode() {
		return forgotPasswordCode;
	}

	public void setForgotPasswordCode(String forgotPasswordCode) {
		this.forgotPasswordCode = forgotPasswordCode;
	}

	public boolean isEditable() {
		Account loggedIn = Util.getCurrentSessionAccount();
		if (loggedIn == null)
			return false;
		return loggedIn.isAdmin() ||   // ADMIN or
			   loggedIn.getId() == id; // self can edit
	}


}
