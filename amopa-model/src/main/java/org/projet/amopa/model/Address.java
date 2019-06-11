package org.projet.amopa.model;

public class Address {
	
	private int id;
	private String postaladdress;
	private String postalcode;
	private String city;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPostaladdress() {
		return postaladdress;
	}

	public void setPostaladdress(String postaladdress) {
		this.postaladdress = postaladdress;
	}

	public String getPostalcode() {
		return postalcode;
	}

	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

}
