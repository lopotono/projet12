package org.projet.amopa.business.impl;

import java.util.List;

import org.projet.amopa.business.contract.ReservationManager;
import org.projet.amopa.model.Reservation;

public class ReservationManagerImpl extends AbstractManager implements ReservationManager {

	public List<Reservation> getListReservationByUserAndActivity(int id_user, int id_activity) {
		return getDaoFactory().getReservationDao().getListReservationByUserAndActivity(id_user, id_activity);
	}

	public void insertReservation(Reservation reservation) {
		getDaoFactory().getReservationDao().insertReservation(reservation);		
	}

	public List<Reservation> getReservationByIdActivity(int id) {
		return getDaoFactory().getReservationDao().getReservationByIdActivity(id);
	}

	public List<Reservation> getReservationByUser(int id) {
		return getDaoFactory().getReservationDao().getReservationByUser(id);
	}

	public List<Reservation> getReservations() {
		return getDaoFactory().getReservationDao().getReservations();
	}

	public void deleteReservation(Reservation reservation) {
		getDaoFactory().getReservationDao().deleteReservation(reservation);
	}

	public Reservation getReservation(int id) {
		return getDaoFactory().getReservationDao().getReservation(id);
	}
}