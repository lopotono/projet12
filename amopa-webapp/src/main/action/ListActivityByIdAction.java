package org.projet.amopa.webapp.action;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ListActivityByIdAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7699440787654943674L;
	
	private Activity listActivityById;
	private int idactivity;
	
	public Activity getListActivityById() {
		return listActivityById;
	}

	public void setListActivityById(Activity listActivityById) {
		this.listActivityById = listActivityById;
	}
	
	public int getIdactivity() {
		return idactivity;
	}
	
	public void setIdactivity(int idactivity) {
		this.idactivity = idactivity;
	}

	public String execute() {
		
		listActivityById = getManagerFactory().getActivityManager().getActivity(idactivity);
		return ActionSupport.SUCCESS;
	}
}