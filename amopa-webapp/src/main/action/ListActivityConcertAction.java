package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ListActivityConcertAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7430445039145016065L;
	
	private String genre;
	private List<Activity> listActivityConcert;
	
	public String getGenre() {
		return genre;
	}
	
	public void setGenre(String genre) {
		this.genre = genre;
	}
	
	public List<Activity> getListActivityConcert() {
		return listActivityConcert;
	}

	public void setListActivityConcert(List<Activity> listActivityConcert) {
		this.listActivityConcert = listActivityConcert;
	}

	public String execute() {
		
		listActivityConcert = getManagerFactory().getActivityManager().getListActivityByConcert(genre);
		if (listActivityConcert.size() == 0) {
			addActionError("Il n'y a aucune activité en cours.");
		}
		return ActionSupport.SUCCESS;
		
	}
}