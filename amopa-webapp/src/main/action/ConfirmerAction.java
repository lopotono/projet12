package org.projet.amopa.webapp.action;

import java.util.Calendar;

import org.projet.amopa.model.Reservation;

import com.opensymphony.xwork2.ActionSupport;

public class ConfirmerAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3227563376164833662L;

	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String execute() {

		Reservation reservation = getManagerFactory().getReservationManager().getReservation(id);
		reservation.setEtat("CONFIRMÉE");
		Calendar dateJour = Calendar.getInstance();
		reservation.setDateconfsms(dateJour);
		getManagerFactory().getReservationManager().confirmerReservation(reservation);
		addActionMessage("La réservation est confirmée !");
		return ActionSupport.SUCCESS;
	}
}