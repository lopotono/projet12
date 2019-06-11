package org.projet.amopa.business.impl;

import org.projet.amopa.business.contract.UserManager;
import org.projet.amopa.model.User;

public class UserManagerImpl extends AbstractManager implements UserManager {

	public User getUser(int id) {
		return getUser(id);
	}

	public User getUser(String mail, String password) {
		return getDaoFactory().getUserDao().getUser(mail, password);
	}

}
