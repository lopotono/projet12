package org.projet.amopa.business.contract;

import org.projet.amopa.model.User;

public interface UserManager {
	
	User getUser(int id);
	
	User getUser(String mail, String password);
	
}