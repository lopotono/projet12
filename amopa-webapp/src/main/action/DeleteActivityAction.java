package org.projet.amopa.webapp.action;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class DeleteActivityAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5345099115003912450L;
	
	private int idactivity;
	private Activity activity;
	
	public int getIdactivity() {
		return idactivity;
	}
	public void setIdactivity(int idactivity) {
		this.idactivity = idactivity;
	}
	
	public Activity getActivity() {
		return activity;
	}
	public void setActivity(Activity activity) {
		this.activity = activity;
	}
	
	public String execute() {
		
		Activity activity = getManagerFactory().getActivityManager().getActivity(idactivity);
		getManagerFactory().getActivityManager().deleteActivity(activity);
		addActionMessage("L'activité " + activity.getTitle() + " est supprimée !");
		return ActionSupport.SUCCESS;		
	}
}