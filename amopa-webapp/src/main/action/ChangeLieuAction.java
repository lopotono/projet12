package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ChangeLieuAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5114311119792399450L;
	
	private List<Activity> listActivity;
	private int idactivity;
	private String lieuActivity;
	
	public List<Activity> getListActivity() {
		return listActivity;
	}

	public void setListActivity(List<Activity> listActivity) {
		this.listActivity = listActivity;
	}

	public int getIdactivity() {
		return idactivity;
	}

	public void setIdactivity(int idactivity) {
		this.idactivity = idactivity;
	}

	public String getLieuActivity() {
		return lieuActivity;
	}

	public void setLieuActivity(String lieuActivity) {
		this.lieuActivity = lieuActivity;
	}

	public String execute() {
		
		listActivity = getManagerFactory().getActivityManager().getActivity();
		Activity activity = getManagerFactory().getActivityManager().getActivity(idactivity);
		activity.getPlace();
		activity.setPlace(lieuActivity);
		addActionMessage("Le lieu de l'activité est modifié.");
		getManagerFactory().getActivityManager().updateActivity(activity);
		return ActionSupport.SUCCESS;
		
	}

}