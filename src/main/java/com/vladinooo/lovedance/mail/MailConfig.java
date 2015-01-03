package com.vladinooo.lovedance.mail;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

@Configuration
public class MailConfig {

	@Bean
	@Profile("dev")
	public MailSender mockMailSender() {
		return new MockMailSender();
	}

	@Bean
	@Profile("prod")
	public MailSender smtpMailSender() {
		return new SmtpMailSender();
	}
}
