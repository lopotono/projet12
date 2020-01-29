package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ChangeStationAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6343915651638074443L;
	
	private List<Activity> listActivity;
	private int idactivity;
	private String stationActivity;
	
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

	public String getStationActivity() {
		return stationActivity;
	}

	public void setStationActivity(String stationActivity) {
		this.stationActivity = stationActivity;
	}

	public String execute() {
		listActivity = getManagerFactory().getActivityManager().getActivity();
		Activity activity = getManagerFactory().getActivityManager().getActivity(idactivity);
		activity.getStation();
		activity.setStation(stationActivity);
		addActionMessage("La station de l'activité est modifiée.");
		getManagerFactory().getActivityManager().updateActivity(activity);
		return ActionSupport.SUCCESS;		
	}
}