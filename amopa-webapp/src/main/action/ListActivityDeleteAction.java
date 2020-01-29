package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ListActivityDeleteAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3281416571213252899L;
	
	private List<Activity> listActivityDelete;
	private Activity activity;
	
	public List<Activity> getListActivityDelete() {
		return listActivityDelete;
	}
	public void setListActivityDelete(List<Activity> listActivityDelete) {
		this.listActivityDelete = listActivityDelete;
	}
	
	public Activity getActivity() {
		return activity;
	}
	public void setActivity(Activity activity) {
		this.activity = activity;
	}
	
	public String execute() {
		
		listActivityDelete = getManagerFactory().getActivityManager().getActivity();
		return ActionSupport.SUCCESS;
	}
}