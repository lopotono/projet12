package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ChangeAdresseAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3798105628572506432L;
	
	private List<Activity> listActivity;
	private int idactivity;
	private String adresseActivity;

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

	public String getAdresseActivity() {
		return adresseActivity;
	}

	public void setAdresseActivity(String adresseActivity) {
		this.adresseActivity = adresseActivity;
	}

	public String execute() {
		
		listActivity = getManagerFactory().getActivityManager().getActivity();
		Activity activity = getManagerFactory().getActivityManager().getActivity(idactivity);
		activity.getLieu();
		activity.setLieu(adresseActivity);
		addActionMessage("L'adresse de l'activité est modifiée.");
		getManagerFactory().getActivityManager().updateActivity(activity);
		return ActionSupport.SUCCESS;		
	}
}