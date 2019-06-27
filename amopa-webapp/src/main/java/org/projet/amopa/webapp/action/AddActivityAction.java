package org.projet.amopa.webapp.action;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class AddActivityAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 345230305544897988L;

	private Activity activity;

	public Activity getActivity() {
		return activity;
	}
	
	public void setActivity(Activity activity) {
		this.activity = activity;
	}
	
	public String execute() {
		
		// Appel de la méthode addActivity
		getManagerFactory().getActivityManager().addActivity(activity);
		addActionMessage("L'activité : " + activity.getTitle() + " est bien enregistrée.");
		return ActionSupport.SUCCESS;
	}
}