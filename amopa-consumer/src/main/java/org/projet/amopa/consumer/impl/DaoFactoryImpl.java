package org.projet.amopa.consumer.impl;

import org.projet.amopa.consumer.contract.ActivityDAO;
import org.projet.amopa.consumer.contract.DaoFactory;
import org.projet.amopa.consumer.contract.ReservationDAO;
import org.projet.amopa.consumer.contract.UserDAO;

public class DaoFactoryImpl implements DaoFactory {

	private UserDAO userDao;
	private ActivityDAO activityDao;
	private ReservationDAO reservationDao;

	public UserDAO getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}

	public ActivityDAO getActivityDao() {
		return activityDao;
	}

	public void setActivityDao(ActivityDAO activityDao) {
		this.activityDao = activityDao;
	}

	public ReservationDAO getReservationDao() {
		return reservationDao;
	}

	public void setReservationDao(ReservationDAO reservationDao) {
		this.reservationDao = reservationDao;
	}	
}