package org.projet.amopa.business.impl;

import java.util.List;

import org.projet.amopa.business.contract.UserManager;
import org.projet.amopa.model.User;

public class UserManagerImpl extends AbstractManager implements UserManager {

	public User getUser(int iduser) {
		return getDaoFactory().getUserDao().getUser(iduser);
	}

	public User getUser(String surname, String password) {
		return getDaoFactory().getUserDao().getUser(surname, password);
	}

	public List<User> getListUser() {
		return getDaoFactory().getUserDao().getListUser();
	}

	public void addUser(User user) {
		getDaoFactory().getUserDao().addUser(user);
	}

	public void deleteUser(User user) {
		getDaoFactory().getUserDao().deleteUser(user);		
	}
}