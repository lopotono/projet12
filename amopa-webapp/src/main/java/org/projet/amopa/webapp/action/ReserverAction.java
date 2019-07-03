package org.projet.amopa.webapp.action;

import java.util.Calendar;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.projet.amopa.model.Activity;
import org.projet.amopa.model.Reservation;
import org.projet.amopa.model.User;

import com.opensymphony.xwork2.ActionSupport;

public class ReserverAction extends AbstractAction implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2445854816598260217L;
	
	private int idactivity;
	private Map<String, Object> session;
	private String nbreparticipants;
	private Reservation reservation;
	private Activity activity;
	
	public int getIdactivity() {
		return idactivity;
	}

	public void setIdactivity(int idactivity) {
		this.idactivity = idactivity;
	}

	public Map<String, Object> getSession() {
		return session;
	}
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;		
	}
		
	public String getNbreparticipants() {
		return nbreparticipants;
	}
	
	public void setNbreparticipants(String nbreparticipants) {
		this.nbreparticipants = nbreparticipants;
	}

	public Reservation getReservation() {
		return reservation;
	}

	public void setReservation(Reservation reservation) {
		this.reservation = reservation;
	}

	public Activity getActivity() {
		return activity;
	}

	public void setActivity(Activity activity) {
		this.activity = activity;
	}

	public String execute() {
		
		String vResult = ActionSupport.INPUT;
		
		// Récupérer id de l'activité
		Activity activity = getManagerFactory().getActivityManager().getActivity(idactivity);
		Reservation reservation = new Reservation();
		// Insérer id de l'activité
		reservation.setId_activity(activity.getIdactivity());
		// Récupérer id de l'utilisateur
		User vUser = (User) session.get("user");
		// Insérer id de l'utilisateur
		reservation.setId_user(vUser.getIduser());
		// Récupérer la date du jour et insérer la date de réservation
		Calendar calendar = Calendar.getInstance();
		reservation.setDatereservation(calendar);
		// Récupérer le nombre de participants
		// Insérer le nombre de participants
		reservation.setNbreparticipants(Integer.parseInt(nbreparticipants));
		// Passer l'état à "réservée"
		reservation.setEtat("RESERVEE");
		activity.getPlacesdisponibles();

		List<Reservation> listReservation = getManagerFactory().getReservationManager().getListReservationByUserAndActivity(vUser.getIduser(), idactivity);
		for (Reservation resa : listReservation) {
			if (reservation.getId_activity() == resa.getId_activity()) {
				addActionError("Vous avez déjà réservé cette activité !");
				return ActionSupport.ERROR;
			}
		}		
		// Insérer les données dans la table reservation
		getManagerFactory().getReservationManager().insertReservation(reservation);
		
		// Décrementer le nombre de places disponibles
		reservation.getNbreparticipants();		
		int resultat = activity.getPlacesdisponibles() - reservation.getNbreparticipants();
		activity.setPlacesdisponibles(resultat);
		// Mise à jour des places disponibles
		getManagerFactory().getActivityManager().updateActivity(activity);
		vResult = ActionSupport.SUCCESS;
		return vResult;		
	}
}