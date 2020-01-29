package org.projet.amopa.business.impl;

import org.projet.amopa.business.contract.AddressManager;
import org.projet.amopa.model.Address;

public class AddressManagerImpl extends AbstractManager implements AddressManager {

	public void addAddress(Address address) {		
		getDaoFactory().getAddressDao().addAddress(address);
	}
}