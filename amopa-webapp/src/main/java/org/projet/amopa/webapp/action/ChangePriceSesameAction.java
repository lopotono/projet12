package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ChangePriceSesameAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1013544025405641735L;
	
	private List<Activity> listActivity;
	private int idactivity;
	private String pricesesameActivity;
	
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

	public String getPricesesameActivity() {
		return pricesesameActivity;
	}

	public void setPricesesameActivity(String pricesesameActivity) {
		this.pricesesameActivity = pricesesameActivity;
	}

	public String execute() {
		
		listActivity = getManagerFactory().getActivityManager().getActivity();
		Activity activity = getManagerFactory().getActivityManager().getActivity(idactivity);
		activity.getPricesesame();
		activity.setPricesesame(pricesesameActivity);
		addActionMessage("Le prix sésame de l'activité est modifié.");
		getManagerFactory().getActivityManager().updateActivity(activity);
		return ActionSupport.SUCCESS;		
	}
}