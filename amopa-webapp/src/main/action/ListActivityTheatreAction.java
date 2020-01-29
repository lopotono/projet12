package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ListActivityTheatreAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7505652045995498826L;
	
	private List<Activity> listActivityThea;
	private String genre;
	
	public String execute() {
		
		listActivityThea = getManagerFactory().getActivityManager().getListActivityByTheatre(genre);
		if (listActivityThea.size() == 0) {
			addActionError("Il n'y a aucune activité en cours.");
		}
		return ActionSupport.SUCCESS;		
	}
}