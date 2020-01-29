package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ListActivityConfAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8698196729996471882L;
	
	private List<Activity> listActivityConf;
	private String genre;
	
	public List<Activity> getListActivityConf() {
		return listActivityConf;
	}

	public void setListActivityConf(List<Activity> listActivityConf) {
		this.listActivityConf = listActivityConf;
	}
	
	public String getGenre() {
		return genre;
	}
	
	public void setGenre(String genre) {
		this.genre = genre;
	}
	
	public String execute() {
		
		listActivityConf = getManagerFactory().getActivityManager().getListActivityByConf(genre);
		if (listActivityConf.size() == 0) {
			addActionError("Il n'y a aucune activité en cours.");
		}
		return ActionSupport.SUCCESS;
	}	
}