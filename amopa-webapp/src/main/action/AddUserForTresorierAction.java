package org.projet.amopa.webapp.action;

import org.projet.amopa.model.User;

import com.opensymphony.xwork2.ActionSupport;

public class AddUserForTresorierAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8766167599891986232L;
	
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String execute() {
		
		getManagerFactory().getUserManager().addUser(user);
		addActionMessage("L'utilisateur : " + user.getSurname() + " est bien enregistré.");
		return ActionSupport.SUCCESS;
	}
}