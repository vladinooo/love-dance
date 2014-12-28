package com.vladinooo.lovedance.entity;

import com.vladinooo.lovedance.util.Util;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="urs", indexes = {
		@Index(columnList = "username", unique = true),
		@Index(columnList = "forgotPasswordCode", unique=true)
})
public class User {
	
	public static final int USERNAME_MAX = 20;
	public static final String USERNAME_PATTERN = "^[a-z0-9]{4,20}$";
	
	public static final int EMAIL_MAX = 256;
	public static final String EMAIL_PATTERN = "[A-Za-z0-9._%-+]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
	
	public static final int PASSWORD_MAX = 20;
	public static final String PASSWORD_PATTERN = "/^[a-z0-9_-]{4,20}$/";

	public static final int RANDOM_CODE_LENGTH = 16;

	public static enum Role {
		UNVERIFIED, BLOCKED, ADMIN
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@Column(nullable = false, length = USERNAME_MAX)
	private String username;

	@Column(nullable = false, length = EMAIL_MAX)
	private String email;

	@Column(nullable = false)
	private String password;
	
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

	@OneToOne(cascade = {CascadeType.PERSIST, CascadeType.REMOVE})
	@JoinColumn(name="profile_id", unique = true)
	private Profile profile;

	public long getId() {
		return id;
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

	public Profile getProfile() {
		return profile;
	}

	public void setProfile(Profile profile) {
		this.profile = profile;
	}

	public boolean isEditable() {
		User loggedIn = Util.getSessionUser();
		if (loggedIn == null)
			return false;
		return loggedIn.isAdmin() ||   // ADMIN or
			   loggedIn.getId() == id; // self can edit
	}


}
