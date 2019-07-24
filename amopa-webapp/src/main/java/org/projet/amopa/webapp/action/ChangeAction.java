package org.projet.amopa.webapp.action;

import java.util.Calendar;
import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ChangeAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3617110163095046716L;
	
	private List<Activity> listActivity;
	private int idactivity;
	private Calendar dateActivity;
	
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

	public Calendar getDateActivity() {
		return dateActivity;
	}

	public void setDateActivity(Calendar dateActivity) {
		this.dateActivity = dateActivity;
	}

	public String execute() {
		
		listActivity = getManagerFactory().getActivityManager().getActivity();
		Activity activity = getManagerFactory().getActivityManager().getActivity(idactivity);
		activity.getDate();
		activity.setDate(dateActivity);
		addActionMessage("La modification est faite");
		getManagerFactory().getActivityManager().updateActivity(activity);
		return ActionSupport.SUCCESS;		
	}
}