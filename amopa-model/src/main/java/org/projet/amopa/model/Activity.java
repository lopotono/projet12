package org.projet.amopa.model;

public class Activity {
	
	private int idactivity;
	private Byte image;
	private String title;
	private String description;
	private String place;
	private String station;
	private String genre;
	private int placesdisponibles;
	private String date;
	private String hour;
	private String lieu;
	private int price;
	private int pricesesame;
	private String conferenciere;
	private String lienweb;

	public Byte getImage() {
		return image;
	}

	public void setImage(Byte image) {
		this.image = image;
	}

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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
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

	public int getPricesesame() {
		return pricesesame;
	}

	public void setPricesesame(int pricesesame) {
		this.pricesesame = pricesesame;
	}

	public String getConferenciere() {
		return conferenciere;
	}

	public void setConferenciere(String conferenciere) {
		this.conferenciere = conferenciere;
	}

	public String getLienweb() {
		return lienweb;
	}

	public void setLienweb(String lienweb) {
		this.lienweb = lienweb;
	}
}