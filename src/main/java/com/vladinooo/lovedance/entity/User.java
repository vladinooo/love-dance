package com.vladinooo.lovedance.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Index;
import javax.persistence.Table;

import com.vladinooo.lovedance.util.Util;

@Entity
@Table(name="urs", indexes = {
		@Index(columnList = "email", unique = true),
		@Index(columnList = "forgotPasswordCode", unique=true)
})
public class User {
	
	public static final int USERNAME_MAX = 20;
	public static final int EMAIL_MAX = 256;
	public static final String EMAIL_PATTERN = "[A-Za-z0-9._%-+]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
	public static final int RANDOM_CODE_LENGTH = 16;
	public static final int PASSWORD_MAX = 20;

	public static enum Role {
		UNVERIFIED, BLOCKED, ADMIN
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@Column(nullable = false, length = EMAIL_MAX)
	private String email;

	@Column(nullable = false)
	private String password;
	
	@Column
	private String firstname;
	
	@Column
	private String surname;
	
	@Column
	private int phone;
	
	@Column(nullable = false)
	private String datetimeRegistered;
	
	@Column(nullable = false)
	private boolean enabled;
	
	@ElementCollection(fetch = FetchType.EAGER)
	private Set<Role> roles = new HashSet<Role>();
	
	@Column(length = RANDOM_CODE_LENGTH)
	private String verificationCode;
	
	@Column(length = RANDOM_CODE_LENGTH)
	private String forgotPasswordCode;
	

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

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

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
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
	
	public String getVerificationCode() {
		return verificationCode;
	}

	public void setVerificationCode(String verificationCode) {
		this.verificationCode = verificationCode;
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
		User loggedIn = Util.getSessionUser();
		if (loggedIn == null)
			return false;
		return loggedIn.isAdmin() ||   // ADMIN or
			   loggedIn.getId() == id; // self can edit
	}


}
