package org.projet.amopa.business.contract;

import java.util.List;

import org.projet.amopa.model.Activity;

public interface ActivityManager {

	void addActivity(Activity activity);

	Activity getActivity(int idactivity);
	
	List<Activity> getListActivityByExpo(String genre);
	
	List<Activity> getListActivityByConcert(String genre);
	
	List<Activity> getListActivityByConf(String genre);
	
	List<Activity> getListActivityByVoyage(String genre);
	
	List<Activity> getListActivityByVoyageplus(String genre);
	
	List<Activity> getListActivityByAG(String genre);
	
	List<Activity> getListActivityByTheatre(String genre);
	
	List<Activity> getActivity();
	
	void updateActivity(Activity activity);
	
	int getActivityByPlacesId(int idactivity);
	
	void deleteActivity(Activity activity);
}