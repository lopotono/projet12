package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ChangeHeureAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4708387318845807133L;
	
	private List<Activity> listActivity;
	private int idactivity;
	private String heureActivity;
	
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

	public String getHeureActivity() {
		return heureActivity;
	}

	public void setHeureActivity(String heureActivity) {
		this.heureActivity = heureActivity;
	}

	public String execute() {
		
		listActivity = getManagerFactory().getActivityManager().getActivity();
		Activity activity = getManagerFactory().getActivityManager().getActivity(idactivity);
		activity.getHour();
		activity.setHour(heureActivity);
		addActionMessage("L'heure de l'activité est modifiée.");
		getManagerFactory().getActivityManager().updateActivity(activity);
		return ActionSupport.SUCCESS;		
	}
}