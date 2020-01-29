package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.User;

import com.opensymphony.xwork2.ActionSupport;

public class ListUserTreAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1502520095130033399L;
	
	private List<User> listUser;
	private User user;
	private int id_user;
	
	public List<User> getListUser() {
		return listUser;
	}
	public void setListUser(List<User> listUser) {
		this.listUser = listUser;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	
	public String execute() {
		
		listUser = getManagerFactory().getUserManager().getListUser();
		return ActionSupport.SUCCESS;
	}
}
