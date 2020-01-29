package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ListActivityVoyagePlusAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4467748236214062477L;
	
	private List<Activity> listActivityVoyagePlus;
	private String genre;
	
	public List<Activity> getListActivityVoyagePlus() {
		return listActivityVoyagePlus;
	}

	public void setListActivityVoyagePlus(List<Activity> listActivityVoyagePlus) {
		this.listActivityVoyagePlus = listActivityVoyagePlus;
	}
	
	public String getGenre() {
		return genre;
	}
	
	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String execute() {
		
		listActivityVoyagePlus = getManagerFactory().getActivityManager().getListActivityByVoyageplus(genre);
		/*if (listActivityVoyagePlus.size() == 0) {
			addActionError("Il n'y a aucune activité en cours.");
		}*/
		return ActionSupport.SUCCESS;		
	}
}