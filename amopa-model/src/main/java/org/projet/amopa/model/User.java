package org.projet.amopa.model;

public class User {
	
	private int id;
	private String member;
	private String surname;
	private String firstname;
	private String mail;
	private int phone;
	private int cellphone;

	public String getMember() {
		return member;
	}

	public void setMember(String member) {
		this.member = member;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public int getCellphone() {
		return cellphone;
	}

	public void setCellphone(int cellphone) {
		this.cellphone = cellphone;
	}

}
