package org.projet.amopa.business.contract;

import java.util.List;

import org.projet.amopa.model.Activity;

public interface ActivityManager {

	void addActivity(Activity activity);

	Activity getActivity(int idactivity);
	
	List<Activity> getListActivityByExpo(String genre);
	
	List<Activity> getListActivityByConcert(String genre);
}