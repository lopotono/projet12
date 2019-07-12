package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class RemovePlacesAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5745471186237513400L;

	private List<Activity> listActivity;
	private int idactivity;
	private int place;

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

	public int getPlace() {
		return place;
	}

	public void setPlace(int place) {
		this.place = place;
	}

	public String execute() {

		listActivity = getManagerFactory().getActivityManager().getActivity();
		Activity activity = getManagerFactory().getActivityManager().getActivity(idactivity);
		activity.getPlacesdisponibles();
		int resultat = activity.getPlacesdisponibles() - place;
		activity.setPlacesdisponibles(resultat);
		addActionMessage("Les places ont bien été supprimées !");
		getManagerFactory().getActivityManager().updateActivity(activity);
		return ActionSupport.SUCCESS;
	}
}