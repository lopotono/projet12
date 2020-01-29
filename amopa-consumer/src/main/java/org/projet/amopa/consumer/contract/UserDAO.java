package org.projet.amopa.consumer.contract;

import java.util.List;

import org.projet.amopa.model.User;

public interface UserDAO {
	
	User getUser(int iduser);
	
	User getUser(String surname, String password);
	
	List<User> getListUser();
	
	void addUser(User user);
	
	void deleteUser(User user);
}