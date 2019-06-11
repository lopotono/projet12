package org.projet.amopa.business.impl;

import org.projet.amopa.business.contract.ManagerFactory;
import org.projet.amopa.business.contract.UserManager;

public class ManagerFactoryImpl implements ManagerFactory  {
	
	private UserManager userManager;

	public UserManager getUserManager() {
		return userManager;
	}

	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}
}