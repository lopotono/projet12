package org.projet.amopa.webapp.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.projet.amopa.model.Reservation;
import org.projet.amopa.model.User;

import com.opensymphony.xwork2.ActionSupport;

public class ListReservations extends AbstractAction implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6570147466594597020L;
	
	private Map<String, Object> session;
	private List<Reservation> listReservation;
	private int id_activity;
	private int id_user;

	public Map<String, Object> getSession() {
		return session;
	}
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
		
	}
	
	public List<Reservation> getListReservation() {
		return listReservation;
	}

	public void setListReservation(List<Reservation> listReservation) {
		this.listReservation = listReservation;
	}
	
	public int getId_activity() {
		return id_activity;
	}
	
	public void setId_activity(int id_activity) {
		this.id_activity = id_activity;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public String execute() {
		
		User vUser = (User) this.session.get("user");
		listReservation = getManagerFactory().getReservationManager().getListReservationByUserAndActivity(vUser.getIduser(), id_activity);
		return ActionSupport.SUCCESS;		
	}
}