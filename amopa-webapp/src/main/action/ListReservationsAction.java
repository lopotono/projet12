package org.projet.amopa.webapp.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.projet.amopa.model.Activity;
import org.projet.amopa.model.Reservation;

import com.opensymphony.xwork2.ActionSupport;

public class ListReservationsAction extends AbstractAction implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6570147466594597020L;
	
	private Map<String, Object> session;
	private Reservation listReservation;
	private int id;
	private Activity activity;

	public Map<String, Object> getSession() {
		return session;
	}
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
		
	}
	
	public Reservation getListReservation() {
		return listReservation;
	}

	public void setListReservation(Reservation listReservation) {
		this.listReservation = listReservation;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	public Activity getActivity() {
		return activity;
	}

	public void setActivity(Activity activity) {
		this.activity = activity;
	}

	public String execute() {
		
		listReservation = getManagerFactory().getReservationManager().getReservation(id);
		return ActionSupport.SUCCESS;		
	}
}