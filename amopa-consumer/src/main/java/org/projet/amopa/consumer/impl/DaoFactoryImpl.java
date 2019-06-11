package org.projet.amopa.consumer.impl;

import org.projet.amopa.consumer.contract.DaoFactory;
import org.projet.amopa.consumer.contract.UserDAO;

public class DaoFactoryImpl implements DaoFactory {

	private UserDAO userDao;

	public UserDAO getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}
}
