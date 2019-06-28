package org.projet.amopa.webapp.action;

import org.projet.amopa.model.Activity;
import org.projet.amopa.model.Reservation;

import com.opensymphony.xwork2.ActionSupport;

public class RemoveReservationAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1575798925328392888L;
	
	private int id;
	private int idactivity;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getIdactivity() {
		return idactivity;
	}
	
	public void setIdactivity(int idactivity) {
		this.idactivity = idactivity;
	}
		
	public String execute() {
		
		String vResult = ActionSupport.SUCCESS;
		Reservation reservation = getManagerFactory().getReservationManager().getReservation(id);
		getManagerFactory().getReservationManager().deleteReservation(reservation);
		Activity activity = getManagerFactory().getActivityManager().getActivity(reservation.getId_activity());
		addActionMessage("La réservation de l'activité "+ activity.getTitle() +" est bien supprimée !");		
		return vResult;		
	}	
}