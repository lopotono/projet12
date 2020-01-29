package org.projet.amopa.model;

import java.util.Calendar;

public class Reservation {
	
	private int id;
	private Calendar datereservation;
	private int nbreparticipants;
	private String etat;
	private Calendar dateresasms;
	private Calendar dateconfsms;
	private Calendar daterappelsms;
	private int id_user;
	private int id_activity;
	private Activity activity;
	private User vUser;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
			
	public Calendar getDatereservation() {
		return datereservation;
	}
	public void setDatereservation(Calendar datereservation) {
		this.datereservation = datereservation;
	}
	
	public int getNbreparticipants() {
		return nbreparticipants;
	}
	public void setNbreparticipants(int nbreparticipants) {
		this.nbreparticipants = nbreparticipants;
	}
	
	public String getEtat() {
		return etat;
	}
	public void setEtat(String etat) {
		this.etat = etat;
	}
	
	public Calendar getDateresasms() {
		return dateresasms;
	}
	public void setDateresasms(Calendar dateresasms) {
		this.dateresasms = dateresasms;
	}
	
	public Calendar getDateconfsms() {
		return dateconfsms;
	}
	public void setDateconfsms(Calendar dateconfsms) {
		this.dateconfsms = dateconfsms;
	}
	
	public Calendar getDaterappelsms() {
		return daterappelsms;
	}
	public void setDaterappelsms(Calendar daterappelsms) {
		this.daterappelsms = daterappelsms;
	}
	
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	
	public int getId_activity() {
		return id_activity;
	}	
	public void setId_activity(int id_activity) {
		this.id_activity = id_activity;
	}
	
	public Activity getActivity() {
		return activity;
	}
	public void setActivity(Activity activity) {
		this.activity = activity;
	}
	
	public User getvUser() {
		return vUser;
	}
	public void setvUser(User vUser) {
		this.vUser = vUser;
	}
}