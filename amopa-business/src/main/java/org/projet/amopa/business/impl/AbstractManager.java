package org.projet.amopa.business.impl;

import org.projet.amopa.consumer.contract.DaoFactory;

public abstract class AbstractManager {
	
	private DaoFactory daoFactory;

	public DaoFactory getDaoFactory() {
		return daoFactory;
	}

	public void setDaoFactory(DaoFactory daoFactory) {
		this.daoFactory = daoFactory;
	}
}