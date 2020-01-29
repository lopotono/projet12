package org.projet.amopa.webapp.action;

import org.projet.amopa.business.contract.ManagerFactory;

import com.opensymphony.xwork2.ActionSupport;

public abstract class AbstractAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1243559605044503167L;
	private static ManagerFactory managerFactory;

	public static ManagerFactory getManagerFactory() {
		return managerFactory;
	}

	public static void setManagerFactory(ManagerFactory managerFactory) {
		AbstractAction.managerFactory = managerFactory;
	}
}