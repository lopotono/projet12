package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ListActivityAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -916600193274037661L;

	private List<Activity> listActivity;
	private Activity activity;

	public List<Activity> getListActivity() {
		return listActivity;
	}

	public void setListActivity(List<Activity> listActivity) {
		this.listActivity = listActivity;
	}

	public Activity getActivity() {
		return activity;
	}

	public void setActivity(Activity activity) {
		this.activity = activity;
	}

	public String execute() {

		listActivity = getManagerFactory().getActivityManager().getActivity();
		return ActionSupport.SUCCESS;
	}
}