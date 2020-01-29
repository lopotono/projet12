package org.projet.amopa.webapp.action;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.projet.amopa.model.Activity;
import org.projet.amopa.model.Reservation;
import org.projet.amopa.model.User;

import com.opensymphony.xwork2.ActionSupport;

public class ListActivityByUserAction extends AbstractAction implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5671736871292002447L;

	private List<Reservation> listActivityUser;
	private Map<String, Object> session;
	private Reservation reservation;
	private Activity activity;
	private int id_activity;
	private int id;
	private User vUser;

	public List<Reservation> getListActivityUser() {
		return listActivityUser;
	}

	public void setListActivityUser(List<Reservation> listActivityUser) {
		this.listActivityUser = listActivityUser;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
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

	public int getId_activity() {
		return id_activity;
	}

	public void setId_activity(int id_activity) {
		this.id_activity = id_activity;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public User getvUser() {
		return vUser;
	}

	public void setvUser(User vUser) {
		this.vUser = vUser;
	}

	public String execute() throws ParseException {

		User vUser = (User) session.get("user");
		listActivityUser = getManagerFactory().getReservationManager().getReservationByUser(vUser.getIduser());

		if (listActivityUser.size() == 0) {
			addActionError("Vous n'avez aucune réservation en cours.");
		}
		// Récupérer la date du jour
		/*Calendar dateJour = Calendar.getInstance();
		Reservation reservation = getManagerFactory().getReservationManager().getReservation(id);
		// Récupérer la date de l'activité
		Activity activity = getManagerFactory().getActivityManager().getActivity(reservation.getId_activity());
		Calendar dateActivity = activity.getDate();
		// Comparer les deux dates
		if (dateActivity.compareTo(dateJour) < 0) {
			reservation.setEtat("TERMINÉE");
		}
		getManagerFactory().getReservationManager().updateReservation(reservation);*/
		return ActionSupport.SUCCESS;
	}
}