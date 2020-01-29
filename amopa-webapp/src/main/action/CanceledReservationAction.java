package org.projet.amopa.webapp.action;

import org.projet.amopa.model.Activity;
import org.projet.amopa.model.Reservation;

import com.opensymphony.xwork2.ActionSupport;

public class CanceledReservationAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 145027766216482169L;

	private int id;
	private int idactivity;
	private Activity activity;

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

	public Activity getActivity() {
		return activity;
	}

	public void setActivity(Activity activity) {
		this.activity = activity;
	}
	
	public String execute() {

		String vResult = ActionSupport.SUCCESS;
		Reservation reservation = getManagerFactory().getReservationManager().getReservation(id);
		getManagerFactory().getReservationManager().canceledReservation(reservation);
		Activity activity = getManagerFactory().getActivityManager().getActivity(reservation.getId_activity());
		addActionMessage("Votre réservation pour l'activité " + activity.getTitle() + " est annulée !");
		activity.getPlacesdisponibles();
		reservation.getNbreparticipants();
		int resultat = activity.getPlacesdisponibles() + reservation.getNbreparticipants();
		activity.setPlacesdisponibles(resultat);
		getManagerFactory().getActivityManager().updateActivity(activity);
		return vResult;
	}
}