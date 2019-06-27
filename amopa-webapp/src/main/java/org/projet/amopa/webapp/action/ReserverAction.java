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
	private int iduser;
	private Map<String, Object> session;
	private List<Reservation> listReservation;
	private int nbreparticipants;
	private User vUser;
		
	public int getIdactivity() {
		return idactivity;
	}

	public void setIdactivity(int idactivity) {
		this.idactivity = idactivity;
	}

	public int getIduser() {
		return iduser;
	}

	public void setIduser(int iduser) {
		this.iduser = iduser;
	}

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
	
	public int getNbreparticipants() {
		return nbreparticipants;
	}
	
	public void setNbreparticipants(int nbreparticipants) {
		this.nbreparticipants = nbreparticipants;
	}
	
	public User getvUser() {
		return vUser;
	}

	public void setvUser(User vUser) {
		this.vUser = vUser;
	}

	public String execute() {
		
		String vResult = ActionSupport.INPUT;
		
		// Récupérer id de l'activité
		Activity activity = getManagerFactory().getActivityManager().getActivity(idactivity);
		System.out.println(idactivity);
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
		reservation.getNbreparticipants();
		// Insérer le nombre de participants
		reservation.setNbreparticipants(nbreparticipants);
		System.out.println(nbreparticipants);
		// Passer l'état à "réservée"
		reservation.setEtat("RESERVEE");
		
		for (Reservation resa : listReservation) {
			if (reservation.getId_activity() == resa.getId_activity()) {
				addActionError("Vous avez déjà réservé cette activité !");
				return ActionSupport.ERROR;
			}
		}
		
		// Insérer les données dans la table reservation
		getManagerFactory().getReservationManager().insertReservation(reservation);
		vResult = ActionSupport.SUCCESS;
		return vResult;		
	}
}