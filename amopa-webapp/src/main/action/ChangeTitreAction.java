package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ChangeTitreAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2483227127827702447L;
	
	private List<Activity> listActivity;
	private int idactivity;
	private String titleActivity;
	
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
	
	public String getTitleActivity() {
		return titleActivity;
	}
	public void setTitleActivity(String titleActivity) {
		this.titleActivity = titleActivity;
	}
	public String execute() {
		
		listActivity = getManagerFactory().getActivityManager().getActivity();
		Activity activity = getManagerFactory().getActivityManager().getActivity(idactivity);
		activity.getTitle();
		activity.setTitle(titleActivity);
		addActionMessage("Le titre de l'activité est modifié.");
		getManagerFactory().getActivityManager().updateActivity(activity);
		return ActionSupport.SUCCESS;
	}
}