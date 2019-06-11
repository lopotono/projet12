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
}