package org.projet.amopa.webapp.action;

import org.projet.amopa.model.User;

import com.opensymphony.xwork2.ActionSupport;

public class DeleteUserTreAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7162286298272137795L;
	
	private int iduser;
	private User user;
	
	public int getIduser() {
		return iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public String execute() {
		
		User user = getManagerFactory().getUserManager().getUser(iduser);
		getManagerFactory().getUserManager().deleteUser(user);
		addActionMessage("L'utilisateur " + user.getSurname() + " est supprimé !");
		return ActionSupport.SUCCESS;
	}
}