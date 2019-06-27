package org.projet.amopa.webapp.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.projet.amopa.model.Reservation;
import org.projet.amopa.model.User;

import com.opensymphony.xwork2.ActionSupport;

public class ListActivityByUserAction extends AbstractAction implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5671736871292002447L;

	private List<Reservation> listResa;
	private Map<String, Object> session;
			
	public List<Reservation> getListResa() {
		return listResa;
	}
	
	public void setListResa(List<Reservation> listResa) {
		this.listResa = listResa;
	}
	
	public Map<String, Object> getSession() {
		return session;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;		
	}
	
	public String execute() {
		
		User user = (User) session.get("user");
		listResa = getManagerFactory().getReservationManager().getReservationByUser(user.getIduser());
		if (listResa.size() == 0) {
			addActionError("Vous n'avez aucune réservation en cours.");
		}
		return ActionSupport.SUCCESS;
		
	}	
}