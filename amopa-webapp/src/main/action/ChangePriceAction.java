package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ChangePriceAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5475159839220366078L;
	
	private List<Activity> listActivity;
	private int idactivity;
	private int priceActivity;
	
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

	public int getPriceActivity() {
		return priceActivity;
	}

	public void setPriceActivity(int priceActivity) {
		this.priceActivity = priceActivity;
	}

	public String execute() {
		
		listActivity = getManagerFactory().getActivityManager().getActivity();
		Activity activity = getManagerFactory().getActivityManager().getActivity(idactivity);
		activity.getPrice();
		activity.setPrice(priceActivity);
		addActionMessage("Le prix de l'activité est modifié.");
		getManagerFactory().getActivityManager().updateActivity(activity);
		return ActionSupport.SUCCESS;		
	}
}