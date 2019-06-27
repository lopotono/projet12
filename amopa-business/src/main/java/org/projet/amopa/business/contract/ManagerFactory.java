package org.projet.amopa.business.contract;

public interface ManagerFactory {
	
	UserManager getUserManager();
	ActivityManager getActivityManager();
	ReservationManager getReservationManager();
}