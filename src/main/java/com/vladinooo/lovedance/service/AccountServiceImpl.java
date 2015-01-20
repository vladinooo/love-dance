package com.vladinooo.lovedance.service;

import com.vladinooo.lovedance.dto.*;
import com.vladinooo.lovedance.entity.Account;
import com.vladinooo.lovedance.entity.Account.Role;
import com.vladinooo.lovedance.mail.MailSender;
import com.vladinooo.lovedance.mail.MockMailSender;
import com.vladinooo.lovedance.repository.AccountRepository;
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
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
@Transactional(propagation=Propagation.SUPPORTS, readOnly = true)
public class AccountServiceImpl implements AccountService, UserDetailsService {
	
	private static final Logger logger = LoggerFactory.getLogger(MockMailSender.class);

	@Value("${spring.mail.username}")
	private String adminEmail;
	
	private AccountRepository accountRepository;
	private PasswordEncoder passwordEncoder;
	private MailSender mailSender;
	
	@Autowired
	public AccountServiceImpl(AccountRepository accountRepository, PasswordEncoder passwordEncoder, MailSender mailSender) {
		this.accountRepository = accountRepository;
		this.passwordEncoder = passwordEncoder;
		this.mailSender = mailSender;
	}
	
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly = false)
	public void signup(SignupForm signupForm, HttpSession session) {
		final Account account = new Account();
		account.setUsername(signupForm.getUsername());
		account.setEmail(signupForm.getEmail());
		account.setPassword(passwordEncoder.encode(signupForm.getPassword()));
		Date datetimeRegistered = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		account.setDatetimeRegistered(dateFormat.format(datetimeRegistered));
		account.setEnabled(true);
		account.getRoles().add(Role.UNVERIFIED);
		account.setEmailConfirmCode(RandomStringUtils.randomAlphanumeric(16));
		accountRepository.save(account);
		session.setAttribute("account", account);
		TransactionSynchronizationManager.registerSynchronization(
				new TransactionSynchronizationAdapter() {
					@Override
					public void afterCommit() {
						sendEmailConfirmLink(account);
					}
				});
	}

	@Override
	public void sendEmailConfirmLink(Account account) {
		try {
			String emailConfirmLink = Util.hostUrl() + "/" + account.getEmailConfirmCode() + "/confirm";
			mailSender.send(account.getEmail(), Util.getMessage("emailConfirmSubject"), Util.getMessage("emailConfirmBody", account.getUsername(), emailConfirmLink));
			logger.info("Confirmation mail to " + account.getEmail() + " queued.");
		} catch (MessagingException e) {
			logger.error(ExceptionUtils.getStackTrace(e));
		}
	}
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public void confirmEmail(String emailConfirmCode) {
		long loggedInUserId = Util.getCurrentSessionAccount().getId();
		Account account = accountRepository.findOne(loggedInUserId);
		Util.validate(account.getRoles().contains(Role.UNVERIFIED), "emailAlreadyConfirmed");
		Util.validate(account.getEmailConfirmCode().equals(emailConfirmCode), "incorrectEmailConfirmCode");
		account.getRoles().remove(Role.UNVERIFIED);
		account.setEmailConfirmCode(null);
		accountRepository.save(account);
	}


	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		Account account = accountRepository.findByUsername(username);
		if (account == null)
			throw new UsernameNotFoundException(username);
		
		return new AccountDetailsImpl(account);
	}
	
	@Override
	public Account getAccount(long accountId) {
		Account loggedIn = Util.getCurrentSessionAccount();
		Account account = accountRepository.findOne(accountId);
		if (loggedIn == null ||
			loggedIn.getId() != account.getId() && !loggedIn.isAdmin())
			account.setEmail("Confidential");
		return account;
	}

	@Override
	public List<Account> getAccounts() {
		return accountRepository.findAll();
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public void forgotPassword(ForgotPasswordForm forgotPasswordForm) {
		final Account account = accountRepository.findByUsername(forgotPasswordForm.getUsername());
		final String forgotPasswordCode = RandomStringUtils.randomAlphanumeric(Account.RANDOM_CODE_LENGTH);
		account.setForgotPasswordCode(forgotPasswordCode);
		final Account savedAccount = accountRepository.save(account);
		TransactionSynchronizationManager.registerSynchronization(
			    new TransactionSynchronizationAdapter() {
			        @Override
			        public void afterCommit() {
			        	try {
							mailForgotPasswordLink(savedAccount);
						} catch (MessagingException e) {
							logger.error(ExceptionUtils.getStackTrace(e));
						}
			        }

		    });				

	}
	
	private void mailForgotPasswordLink(Account account) throws MessagingException {
		String forgotPasswordLink =  Util.hostUrl() + "/reset-password/" + account.getForgotPasswordCode();
		mailSender.send(account.getEmail(),
				Util.getMessage("forgotPasswordSubject"),
				Util.getMessage("forgotPasswordEmail", forgotPasswordLink));
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public void resetPassword(String forgotPasswordCode, ResetPasswordForm resetPasswordForm, BindingResult result) {
		Account account = accountRepository.findByForgotPasswordCode(forgotPasswordCode);
		
		if (account == null) {
			result.reject("invalidForgotPassword");
		}
		if (result.hasErrors()) {
			return;
		}
		account.setForgotPasswordCode(null);
		account.setPassword(passwordEncoder.encode(resetPasswordForm.getNewPassword().trim()));
		accountRepository.save(account);
	}


	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public void editAccount(long accountId, EditAccountForm editAccountForm) {
		Account loggedIn = Util.getCurrentSessionAccount();
		Util.validate(loggedIn.isAdmin() || loggedIn.getId() == accountId, "noPermissions");
		Account account = accountRepository.findOne(accountId);
		account.setEmail(editAccountForm.getEmail());
		account.setFirstname(editAccountForm.getFirstname());
		account.setSurname(editAccountForm.getSurname());
		account.setPhone(editAccountForm.getPhone());
		account.setBiography(editAccountForm.getBiography());
		accountRepository.save(account);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public void editPassword(long accountId, EditPasswordForm editPasswordForm) {
		Account loggedIn = Util.getCurrentSessionAccount();
		Util.validate(loggedIn.isAdmin() || loggedIn.getId() == accountId, "noPermissions");
		Account account = accountRepository.findOne(accountId);
		account.setPassword(passwordEncoder.encode(editPasswordForm.getNewPassword()));
		accountRepository.save(account);
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
							mailSender.send(adminEmail, Util.getMessage("contactMeSubject", cf.getName()), Util.getMessage("contactMeMessage", cf.getName(), cf.getEmail(), cf.getMessage()));
							logger.info("Contact me content: " + cf.getName() + ": " + cf.getEmail() + ": " + cf.getMessage());
							mailSender.send(cf.getEmail(), Util.getMessage("contactMeThankUSubject"), Util.getMessage("contactMeThankUMessage", cf.getName()));
							logger.info("Confirmation to: " + cf.getEmail() + " sent successfully");
						} catch (MessagingException e) {
							logger.error(ExceptionUtils.getStackTrace(e));
						}
					}
				});

	}


}
