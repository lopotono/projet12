package org.projet.amopa.webapp.action;

import java.util.Calendar;
import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ChangeDateLimiteAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -350874908017648043L;
	
	private List<Activity> listActivity;
	private int idactivity;
	private Calendar datelimiteActivity;
	
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

	public Calendar getDatelimiteActivity() {
		return datelimiteActivity;
	}

	public void setDatelimiteActivity(Calendar datelimiteActivity) {
		this.datelimiteActivity = datelimiteActivity;
	}

	public String execute() {
		
		listActivity = getManagerFactory().getActivityManager().getActivity();
		Activity activity = getManagerFactory().getActivityManager().getActivity(idactivity);
		activity.getDatelimite();
		activity.setDatelimite(datelimiteActivity);
		addActionMessage("La date limite de l'activité est modifiée.");
		getManagerFactory().getActivityManager().updateActivity(activity);
		return ActionSupport.SUCCESS;		
	}
}