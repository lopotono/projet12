package org.projet.amopa.batch;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component("projetMailSender")
public class MailSender {
	
	@Autowired(required = true)
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