package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ListActivityVoyageAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5766305370717021400L;
	
	private List<Activity> listActivityVoyage;
	private String genre;
		
	public List<Activity> getListActivityVoyage() {
		return listActivityVoyage;
	}

	public void setListActivityVoyage(List<Activity> listActivityVoyage) {
		this.listActivityVoyage = listActivityVoyage;
	}

	public String getGenre() {
		return genre;
	}
	
	public void setGenre(String genre) {
		this.genre = genre;
	}
	
	public String execute() {
		
		listActivityVoyage = getManagerFactory().getActivityManager().getListActivityByVoyage(genre);
		if (listActivityVoyage.size() == 0) {
			addActionError("Il n'y a aucune activité en cours.");
		}
		return ActionSupport.SUCCESS;		
	}
}