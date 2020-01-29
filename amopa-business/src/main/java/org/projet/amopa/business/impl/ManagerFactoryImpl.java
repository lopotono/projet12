package org.projet.amopa.business.impl;

import org.projet.amopa.business.contract.ActivityManager;
import org.projet.amopa.business.contract.AddressManager;
import org.projet.amopa.business.contract.ManagerFactory;
import org.projet.amopa.business.contract.ReservationManager;
import org.projet.amopa.business.contract.UserManager;

public class ManagerFactoryImpl implements ManagerFactory  {
	
	private UserManager userManager;
	private ActivityManager activityManager;
	private ReservationManager reservationManager;
	private AddressManager addressManager;

	public UserManager getUserManager() {
		return userManager;
	}

	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}

	public ActivityManager getActivityManager() {
		return activityManager;
	}

	public void setActivityManager(ActivityManager activityManager) {
		this.activityManager = activityManager;
	}

	public ReservationManager getReservationManager() {
		return reservationManager;
	}

	public void setReservationManager(ReservationManager reservationManager) {
		this.reservationManager = reservationManager;
	}

	public AddressManager getAddressManager() {
		return addressManager;
	}

	public void setAddressManager(AddressManager addressManager) {
		this.addressManager = addressManager;
	}	
}