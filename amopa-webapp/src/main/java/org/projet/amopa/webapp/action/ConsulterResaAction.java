package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Reservation;

import com.opensymphony.xwork2.ActionSupport;

public class ConsulterResaAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2461900373055066917L;
	
	private List<Reservation> listResa;

	public List<Reservation> getListResa() {
		return listResa;
	}

	public void setListResa(List<Reservation> listResa) {
		this.listResa = listResa;
	}
	
	public String execute() {
		
		listResa = getManagerFactory().getReservationManager().getReservations();
		
		if (listResa.size() == 0) {
			addActionMessage("Il n'y a aucune réservation pour le moment !");
		}
		return ActionSupport.SUCCESS;
	}
}