package org.projet.amopa.model;

public class Activity {
	
	private int id;
	private String title;
	private String description;
	private String place;
	private String station;
	private int lignemetro;
	private int lignetram;
	private int lignebus;
	private String genre;
	private int placesdisponibles;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public int getLignemetro() {
		return lignemetro;
	}

	public void setLignemetro(int lignemetro) {
		this.lignemetro = lignemetro;
	}

	public int getLignetram() {
		return lignetram;
	}

	public void setLignetram(int lignetram) {
		this.lignetram = lignetram;
	}

	public int getLignebus() {
		return lignebus;
	}

	public void setLignebus(int lignebus) {
		this.lignebus = lignebus;
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
}