package org.projet.amopa.webapp.action;

import java.util.Map;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class DetailsActivityAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5840556342254016016L;
		
	private Activity listDetails;
	private int idactivity;
	private Map<String, Object> session;
	
	public Map<String, Object> getSession() {
		return session;
	}
	
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	public Activity getListDetails() {
		return listDetails;
	}

	public void setListDetails(Activity listDetails) {
		this.listDetails = listDetails;
	}
	
	public int getIdactivity() {
		return idactivity;
	}

	public void setIdactivity(int idactivity) {
		this.idactivity = idactivity;
	}

	public String execute() {
		
		listDetails = getManagerFactory().getActivityManager().getActivity(idactivity);
		return ActionSupport.SUCCESS;	
	}		
}