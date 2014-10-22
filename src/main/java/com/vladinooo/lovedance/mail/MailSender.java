package com.vladinooo.lovedance.mail;

import javax.mail.MessagingException;

public interface MailSender {

	public abstract void send(String to, String subject, String body) throws MessagingException;

}