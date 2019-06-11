package org.projet.amopa.consumer.contract;

import org.projet.amopa.model.User;

public interface UserDAO {
	
	User getUser(int id);
	
	User getUser(String mail, String password);

}