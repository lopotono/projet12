package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;
import org.projet.amopa.model.Reservation;
import org.projet.amopa.model.User;

import com.opensymphony.xwork2.ActionSupport;

public class ActualiserAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5538253233355088551L;
	
	private List<Reservation> listResa;
	private User user;
	private Activity activity;
	private Reservation reservation;
	private int id_activity;
	private int id_user;
		
	public List<Reservation> getListResa() {
		return listResa;
	}

	public void setListResa(List<Reservation> listResa) {
		this.listResa = listResa;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Activity getActivity() {
		return activity;
	}

	public void setActivity(Activity activity) {
		this.activity = activity;
	}

	public Reservation getReservation() {
		return reservation;
	}

	public void setReservation(Reservation reservation) {
		this.reservation = reservation;
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
		
		listResa = getManagerFactory().getReservationManager().getReservations();

		if (listResa.size() == 0) {
			addActionMessage("Il n'y a aucune réservation pour le moment !");
		}
		return ActionSupport.SUCCESS;				
	}
}