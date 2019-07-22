package org.projet.amopa.business.impl;

import org.projet.amopa.business.mail.MailSender;
import org.projet.amopa.consumer.contract.DaoFactory;
import org.springframework.transaction.PlatformTransactionManager;

public abstract class AbstractManager {
	
	private DaoFactory daoFactory;
	
	private MailSender ms;

	public DaoFactory getDaoFactory() {
		return daoFactory;
	}

	public void setDaoFactory(DaoFactory daoFactory) {
		this.daoFactory = daoFactory;
	}
	
	public MailSender getMs() {
		return ms;
	}
	
	public void setMs(MailSender ms) {
		this.ms = ms;
	}
		
	private PlatformTransactionManager platformTransactionManager;
	
	public PlatformTransactionManager getPlatformTransactionManager() {
		return platformTransactionManager;
	}

	public void setPlatformTransactionManager(PlatformTransactionManager platformTransactionManager) {
		this.platformTransactionManager = platformTransactionManager;
	}		
}