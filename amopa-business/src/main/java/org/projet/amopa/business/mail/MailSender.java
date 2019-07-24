package org.projet.amopa.business.mail;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

public class MailSender {

	private JavaMailSender javaMailSender;

	public void sendMail(String from, String to, String subject, String body) {

		SimpleMailMessage mail = new SimpleMailMessage();

		mail.setFrom(from);
		mail.setTo(to);
		mail.setSubject(subject);
		mail.setText(body);

		System.out.println("Sending");

		javaMailSender.send(mail);

		System.out.println("Done !");
	}

	public JavaMailSender getJavaMailSender() {
		return javaMailSender;
	}

	public void setJavaMailSender(JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
	}
}