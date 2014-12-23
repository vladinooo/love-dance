package com.vladinooo.lovedance.service;

import com.vladinooo.lovedance.dto.*;
import com.vladinooo.lovedance.entity.User;
import com.vladinooo.lovedance.entity.User.Role;
import com.vladinooo.lovedance.mail.MailSender;
import com.vladinooo.lovedance.mail.MockMailSender;
import com.vladinooo.lovedance.repository.UserRepository;
import com.vladinooo.lovedance.util.Util;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.exception.ExceptionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionSynchronizationAdapter;
import org.springframework.transaction.support.TransactionSynchronizationManager;
import org.springframework.validation.BindingResult;

import javax.mail.MessagingException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Service
@Transactional(propagation=Propagation.SUPPORTS, readOnly = true)
public class UserServiceImpl implements UserService, UserDetailsService {
	
	private static final Logger logger = LoggerFactory.getLogger(MockMailSender.class);

	@Value("${smtp.authenticator.email}")
	private String adminEmail;
	
	private UserRepository userRepository;
	private PasswordEncoder passwordEncoder;
	private MailSender mailSender;
	
	@Autowired
	public UserServiceImpl(UserRepository userRepository, PasswordEncoder passwordEncoder, MailSender mailSender) {
		this.userRepository = userRepository;
		this.passwordEncoder = passwordEncoder;
		this.mailSender = mailSender;
	}
	
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly = false)
	public void signup(SignupForm signupForm) {
		final User user = new User();
		user.setUsername(signupForm.getUsername());
		user.setEmail(signupForm.getEmail());
		user.setPassword(passwordEncoder.encode(signupForm.getPassword()));
		Date datetimeRegistered = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		user.setDatetimeRegistered(dateFormat.format(datetimeRegistered));
		user.setEnabled(true);
		user.getRoles().add(Role.UNVERIFIED);
		user.setVerificationCode(RandomStringUtils.randomAlphanumeric(16));
		userRepository.save(user);
		TransactionSynchronizationManager.registerSynchronization(
			    new TransactionSynchronizationAdapter() {
			        @Override
			        public void afterCommit() {
			    		try {
			    			String verifyLink = Util.hostUrl() + "/users/" + user.getVerificationCode() + "/verify";
			    			mailSender.send(user.getEmail(), Util.getMessage("verifySubject"), Util.getMessage("verifyEmail", verifyLink));
			    			logger.info("Verification mail to " + user.getEmail() + " queued.");
						} catch (MessagingException e) {
							logger.error(ExceptionUtils.getStackTrace(e));
						}
			        }
		    });
	}
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public void verify(String verificationCode) {
		long loggedInUserId = Util.getSessionUser().getId();
		User user = userRepository.findOne(loggedInUserId);
		Util.validate(user.getRoles().contains(Role.UNVERIFIED), "alreadyVerified");
		Util.validate(user.getVerificationCode().equals(verificationCode), "incorrect", "verification code");
		user.getRoles().remove(Role.UNVERIFIED);
		user.setVerificationCode(null);
		userRepository.save(user);
	}


	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		User user = userRepository.findByUsername(username);
		if (user == null)
			throw new UsernameNotFoundException(username);
		
		return new UserDetailsImpl(user);
	}
	
	@Override
	public User findOne(long userId) {
		User loggedIn = Util.getSessionUser();
		User user = userRepository.findOne(userId);
		if (loggedIn == null ||
			loggedIn.getId() != user.getId() && !loggedIn.isAdmin())
			user.setEmail("Confidential");
		return user;

	}


	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public void forgotPassword(ForgotPasswordForm forgotPasswordForm) {
		final User user = userRepository.findByUsername(forgotPasswordForm.getUsername());
		final String forgotPasswordCode = RandomStringUtils.randomAlphanumeric(User.RANDOM_CODE_LENGTH);
		user.setForgotPasswordCode(forgotPasswordCode);
		final User savedUser = userRepository.save(user);
		TransactionSynchronizationManager.registerSynchronization(
			    new TransactionSynchronizationAdapter() {
			        @Override
			        public void afterCommit() {
			        	try {
							mailForgotPasswordLink(savedUser);
						} catch (MessagingException e) {
							logger.error(ExceptionUtils.getStackTrace(e));
						}
			        }

		    });				

	}
	
	private void mailForgotPasswordLink(User user) throws MessagingException {
		String forgotPasswordLink =  Util.hostUrl() + "/reset-password/" + user.getForgotPasswordCode();
		mailSender.send(user.getEmail(),
				Util.getMessage("forgotPasswordSubject"),
				Util.getMessage("forgotPasswordEmail", forgotPasswordLink));
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public void resetPassword(String forgotPasswordCode, ResetPasswordForm resetPasswordForm, BindingResult result) {
		User user = userRepository.findByForgotPasswordCode(forgotPasswordCode);
		
		if (user == null) {
			result.reject("invalidForgotPassword");
		}
		if (result.hasErrors()) {
			return;
		}
		user.setForgotPasswordCode(null);
		user.setPassword(passwordEncoder.encode(resetPasswordForm.getPassword().trim()));
		userRepository.save(user);
	}


	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public void profileUpdate(long userId, ProfileEditForm profileEditForm) {
		User loggedIn = Util.getSessionUser();
		Util.validate(loggedIn.isAdmin() || loggedIn.getId() == userId, "noPermissions");
		User user = userRepository.findOne(userId);
		user.setFirstname(profileEditForm.getFirstname());
		user.setSurname(profileEditForm.getSurname());
		user.setPhone(profileEditForm.getPhone());
		user.setBiography(profileEditForm.getBiography());
		userRepository.save(user);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public void accountUpdate(long userId, AccountEditForm accountEditForm) {
		User loggedIn = Util.getSessionUser();
		Util.validate(loggedIn.isAdmin() || loggedIn.getId() == userId, "noPermissions");
		User user = userRepository.findOne(userId);
		user.setEmail(accountEditForm.getEmail());
		user.setPassword(accountEditForm.getPassword());
		userRepository.save(user);	
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly = false)
	public void sendMessage(ContactForm contactForm) {
		final ContactForm cf = contactForm;
		TransactionSynchronizationManager.registerSynchronization(
				new TransactionSynchronizationAdapter() {
					@Override
					public void afterCommit() {
						try {
							mailSender.send(adminEmail, Util.getMessage("contactMeSubject", cf.getName()), Util.getMessage("contactMeMessage", cf.getName(), cf.getMessage()));
							logger.info("Contact me content: " + cf.getName() + ": " + cf.getEmail() + ": " + cf.getMessage());
						} catch (MessagingException e) {
							logger.error(ExceptionUtils.getStackTrace(e));
						}
					}
				});

	}


}
