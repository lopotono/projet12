package org.projet.amopa.business.impl;

import java.util.List;

import org.projet.amopa.business.contract.ActivityManager;
import org.projet.amopa.model.Activity;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionCallbackWithoutResult;
import org.springframework.transaction.support.TransactionTemplate;

public class ActivityManagerImpl extends AbstractManager implements ActivityManager {
	
	@Transactional(value = "txManagerActivity")
	public void addActivity(final Activity activity) {

		TransactionTemplate vTransactionTemplate = new TransactionTemplate(getPlatformTransactionManager());
		
		vTransactionTemplate.execute(new TransactionCallbackWithoutResult() {

			@Override
			protected void doInTransactionWithoutResult(TransactionStatus status) {
				
				getDaoFactory().getActivityDao().addActivity(activity);
			};
		});

	}

	public Activity getActivity(int idactivity) {
		return getDaoFactory().getActivityDao().getActivity(idactivity);
	}

	public List<Activity> getListActivityByExpo(String genre) {
		return getDaoFactory().getActivityDao().getListActivityByExpo(genre);
	}

	public List<Activity> getListActivityByConcert(String genre) {
		return getDaoFactory().getActivityDao().getListActivityByConcert(genre);
	}

	public List<Activity> getListActivityByConf(String genre) {
		return getDaoFactory().getActivityDao().getListActivityByConf(genre);
	}

	public List<Activity> getListActivityByVoyage(String genre) {
		return getDaoFactory().getActivityDao().getListActivityByVoyage(genre);
	}

	public List<Activity> getListActivityByVoyageplus(String genre) {
		return getDaoFactory().getActivityDao().getListActivityByVoyageplus(genre);
	}

	public List<Activity> getListActivityByAG(String genre) {
		return getDaoFactory().getActivityDao().getListActivityByAG(genre);
	}

	public List<Activity> getActivity() {
		return getDaoFactory().getActivityDao().getActivity();
	}

	public void updateActivity(Activity activity) {
		getDaoFactory().getActivityDao().updateActivity(activity);
	}

	public int getActivityByPlacesId(int idactivity) {
		return getDaoFactory().getActivityDao().getActivityByPlacesId(idactivity);
	}
}