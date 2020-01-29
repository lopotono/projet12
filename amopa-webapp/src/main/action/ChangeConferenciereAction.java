package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ChangeConferenciereAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5724365399789866580L;
	
	private List<Activity> listActivity;
	private int idactivity;
	private String conferenciereActivity;
	
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

	public String getConferenciereActivity() {
		return conferenciereActivity;
	}

	public void setConferenciereActivity(String conferenciereActivity) {
		this.conferenciereActivity = conferenciereActivity;
	}

	public String execute() {
		
		listActivity = getManagerFactory().getActivityManager().getActivity();
		Activity activity = getManagerFactory().getActivityManager().getActivity(idactivity);
		activity.getConferenciere();
		activity.setConferenciere(conferenciereActivity);
		addActionMessage("La conférencière ou le conférencier de l'activité est modifié(e).");
		getManagerFactory().getActivityManager().updateActivity(activity);
		return ActionSupport.SUCCESS;		
	}
}