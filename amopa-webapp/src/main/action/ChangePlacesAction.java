package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ChangePlacesAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1136407592745756215L;
	
	private List<Activity> listActivity;
	private int idactivity;
	private int placesActivity;
	
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

	public int getPlacesActivity() {
		return placesActivity;
	}

	public void setPlacesActivity(int placesActivity) {
		this.placesActivity = placesActivity;
	}

	public String execute() {
		
		listActivity = getManagerFactory().getActivityManager().getActivity();
		Activity activity = getManagerFactory().getActivityManager().getActivity(idactivity);
		activity.getPlacesdisponibles();
		activity.setPlacesdisponibles(placesActivity);
		addActionMessage("Les places disponibles de l'activité sont modifiées.");
		getManagerFactory().getActivityManager().updateActivity(activity);
		return ActionSupport.SUCCESS;
		
	}
}