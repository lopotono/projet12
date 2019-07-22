package org.projet.amopa.model;

import java.util.Calendar;

public class Activity {
	
	private int idactivity;
	private String title;
	private String description;
	private String place;
	private String station;
	private String genre;
	private int placesdisponibles;
	private Calendar date;
	private String hour;
	private String lieu;
	private int price;
	private String pricesesame;
	private String conferenciere;
	private Calendar datelimite;

	public int getIdactivity() {
		return idactivity;
	}

	public void setIdactivity(int idactivity) {
		this.idactivity = idactivity;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getStation() {
		return station;
	}

	public void setStation(String station) {
		this.station = station;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public int getPlacesdisponibles() {
		return placesdisponibles;
	}

	public void setPlacesdisponibles(int placesdisponibles) {
		this.placesdisponibles = placesdisponibles;
	}

	public Calendar getDate() {
		return date;
	}

	public void setDate(Calendar date) {
		this.date = date;
	}

	public String getHour() {
		return hour;
	}

	public void setHour(String hour) {
		this.hour = hour;
	}

	public String getLieu() {
		return lieu;
	}

	public void setLieu(String lieu) {
		this.lieu = lieu;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getPricesesame() {
		return pricesesame;
	}

	public void setPricesesame(String pricesesame) {
		this.pricesesame = pricesesame;
	}

	public String getConferenciere() {
		return conferenciere;
	}

	public void setConferenciere(String conferenciere) {
		this.conferenciere = conferenciere;
	}

	public Calendar getDatelimite() {
		return datelimite;
	}

	public void setDatelimite(Calendar datelimite) {
		this.datelimite = datelimite;
	}
}