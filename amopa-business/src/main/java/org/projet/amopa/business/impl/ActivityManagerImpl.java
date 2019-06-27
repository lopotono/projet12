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
}