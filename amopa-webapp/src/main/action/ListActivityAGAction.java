package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ListActivityAGAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8900447775473764803L;
	
	private List<Activity> listActivityAG;
	private String genre;
	
	public List<Activity> getListActivityAG() {
		return listActivityAG;
	}

	public void setListActivityAG(List<Activity> listActivityAG) {
		this.listActivityAG = listActivityAG;
	}

	public String execute() {
		
		listActivityAG = getManagerFactory().getActivityManager().getListActivityByAG(genre);
		if (listActivityAG.size() == 0) {
			addActionError("Il n'y a pas d'AG en cours.");
		}
		return ActionSupport.SUCCESS;		
	}
}