package org.projet.amopa.consumer.contract;

import java.util.List;

import org.projet.amopa.model.Reservation;

public interface ReservationDAO {
	
	List<Reservation> getListReservationByUserAndActivity(int id_user, int id_activity);
	
	void insertReservation(Reservation reservation);
	
	List<Reservation> getReservationByIdActivity(int id);
	
	List<Reservation> getReservationByUser(int id);
	
	List<Reservation> getReservations();
}