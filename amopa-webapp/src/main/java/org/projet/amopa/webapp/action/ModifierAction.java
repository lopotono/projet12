package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ModifierAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5067284976136356125L;
	
	private List<Activity> listActivity;
	
	public List<Activity> getListActivity() {
		return listActivity;
	}

	public void setListActivity(List<Activity> listActivity) {
		this.listActivity = listActivity;
	}

	public String execute() {
		
		listActivity = getManagerFactory().getActivityManager().getActivity();
		return ActionSupport.SUCCESS;		
	}
}