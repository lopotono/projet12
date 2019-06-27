package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ListActivityExpoAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -916600193274037661L;
	
	private List<Activity> listActivity;
	private String genre;

	public List<Activity> getListActivity() {
		return listActivity;
	}

	public void setListActivity(List<Activity> listActivity) {
		this.listActivity = listActivity;
	}
	
	public String getGenre() {
		return genre;
	}
	
	public void setGenre(String genre) {
		this.genre = genre;
	}
	
	public String execute() {
		
		// Appel de la méthode getListActivityByExpo
		listActivity = getManagerFactory().getActivityManager().getListActivityByExpo(genre);
		return ActionSupport.SUCCESS;		
	}
}