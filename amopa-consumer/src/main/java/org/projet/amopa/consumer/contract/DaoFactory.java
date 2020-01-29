package org.projet.amopa.consumer.contract;

public interface DaoFactory {
	
	public UserDAO getUserDao();
	public ActivityDAO getActivityDao();
	public ReservationDAO getReservationDao();
	public AddressDAO getAddressDao();
}