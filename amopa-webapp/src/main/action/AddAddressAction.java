package org.projet.amopa.webapp.action;

import org.projet.amopa.model.Address;

import com.opensymphony.xwork2.ActionSupport;

public class AddAddressAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6129453240211809824L;
	
	private Address address;

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
	
	public String execute() {
		
		getManagerFactory().getAddressManager().addAddress(address);
		addActionMessage("L'adresse de l'utilisateur est bien enregistrée.");
		return ActionSupport.SUCCESS;
	}
}