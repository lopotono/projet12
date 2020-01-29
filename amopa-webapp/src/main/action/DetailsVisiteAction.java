package org.projet.amopa.webapp.action;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class DetailsVisiteAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9064039953148823880L;

	private Activity listDetails;
	private int idactivity;

	public Activity getListDetails() {
		return listDetails;
	}

	public void setListDetails(Activity listDetails) {
		this.listDetails = listDetails;
	}

	public int getIdactivity() {
		return idactivity;
	}

	public void setIdactivity(int idactivity) {
		this.idactivity = idactivity;
	}

	public String execute() {

		listDetails = getManagerFactory().getActivityManager().getActivity(idactivity);
		return ActionSupport.SUCCESS;
	}
}