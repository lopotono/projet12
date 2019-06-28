package org.projet.amopa.business.contract;

import java.util.List;

import org.projet.amopa.model.Reservation;

public interface ReservationManager {
	
	List<Reservation> getListReservationByUserAndActivity(int id_user, int id_activity);
	
	void insertReservation(Reservation reservation);
	
	List<Reservation> getReservationByIdActivity(int id);
	
	List<Reservation> getReservationByUser(int id);
	
	List<Reservation> getReservations();
	
	void deleteReservation(Reservation reservation);
	
	Reservation getReservation(int id);
}