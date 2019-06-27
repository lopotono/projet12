package org.projet.amopa.consumer.contract;

import java.util.List;

import org.projet.amopa.model.Activity;

public interface ActivityDAO {
	
	void addActivity(Activity activity);
	
	Activity getActivity(int idactivity);
		
	List<Activity> getListActivityByExpo(String genre);
	
	int getActivityByPlacesId(int idactivity);
	
	List<Activity> getListActivityByConcert(String genre);
}